function [model, lbls] = fgplvmReadFromFID(FID)

% FGPLVMREADFROMFID Load from a FID produced by the C++ implementation.

% FGPLVM

lineStr = getline(FID);
tokens = tokenise(lineStr, '=');
if(length(tokens)~=2 | ~strcmp(tokens{1}, 'gplvmVersion'))
  error('Incorrect file format.')
end
if(~strcmp(tokens{2}, '0.1') & ~strcmp(tokens{2}, '0.11') ...
   & ~strcmp(tokens{2}, '0.12'))
  error('Incorrect file version.')
end
version = str2num(tokens{2});

lineStr = getline(FID);
tokens = tokenise(lineStr, '=');
if(length(tokens)~=2 | ~strcmp(tokens{1}, 'numData'))
  error('Incorrect file format.')
end
numData = str2num(tokens{2});

lineStr = getline(FID);
tokens = tokenise(lineStr, '=');
if(length(tokens)~=2 | ~strcmp(tokens{1}, 'numProcesses'))
  error('Incorrect file format.')
end
dataDim = str2num(tokens{2});

lineStr = getline(FID);
tokens = tokenise(lineStr, '=');
if(length(tokens)~=2 | ~strcmp(tokens{1}, 'latentDim'))
  error('Incorrect file format.')
end
latentDim = str2num(tokens{2});

if(version>0.11)
  lineStr = getline(FID);
  tokens = tokenise(lineStr, '=');
  if(length(tokens)~=2 | ~strcmp(tokens{1}, 'latentRegularised'))
    error('Incorrect file format.')
  end
  latentRegularised = str2num(tokens{2});
else
  latentRegularised = 1;
end

if(version>0.11)
  lineStr = getline(FID);
  tokens = tokenise(lineStr, '=');
  if(length(tokens)~=2 | ~strcmp(tokens{1}, 'backConstrained'))
    error('Incorrect file format.')
  end
  backConstrained = str2num(tokens{2});
else
  backConstrained = 0;
end

if(version>0.1)
  lineStr = getline(FID);
  tokens = tokenise(lineStr, '=');
  if(length(tokens)~=2 | ~strcmp(tokens{1}, 'dynamicsLearnt'))
    error('Incorrect file format.')
  end
  dynamicsLearnt = str2num(tokens{2});
else
  dynamicsLearnt = 0;
end
kern = kernReadFromFID(FID);
if dynamicsLearnt
  dynKern = kernReadFromFID(FID);
end
noise = noiseReadFromFID(FID);

labelsPresent = 0;
labels=ones(numData, 1);
lineStr = getline(FID);
tokens = tokenise(lineStr,',');
for i=1:length(tokens)
  subTokens = tokenise(tokens{i}, ':');
  if strcmp(subTokens{1}, 'Y')
    if str2num(subTokens{2})~=dataDim
      error('Incorrect file format.');
    end
  elseif strcmp(subTokens{1}, 'X')
    if str2num(subTokens{2})~=latentDim
      error('Incorrect file format.');
    end
  elseif strcmp(subTokens{1}, 'labels')
    labelsPresent = 1;
    if str2num(subTokens{2})~=1
      error('Incorrect file format.');
    end
  else
    error('Incorrect file format.');
  end
end

X = zeros(numData, latentDim);
y = zeros(numData, dataDim);

for i=1:numData
  lineStr = getline(FID);
  tokens = tokenise(lineStr);
  for j=1:dataDim
    y(i, j) = str2num(tokens{j});
  end
  for j=1:latentDim
    X(i, j) = str2num(tokens{j+dataDim});
  end
  if labelsPresent
    labels(i) = str2num(tokens{dataDim+latentDim+1});
  end
end
if(~strcmp(noise.type, 'scale'))
  error('Can only load noise of type scale.')
end
if latentRegularised
  prior = 'gaussian';
else
  prior = [];
end
if backConstrained
  warning('Not loading form of back constraints.')
end
model = fgplvmCreate(latentDim, size(y, 2), y, 'ftc', numData, kern, ...
                                 prior);
model.X = X;
model.scale = noise.scale;
model.bias = noise.bias;
for i = 1:model.noise.numProcess
  model.m(:, i) = (y(:, i) - model.noise.bias(i));
  if model.noise.scale(i)
    model.m(:, i) = y(:, i)/model.noise.scale(i);
  end
end

% This forces kernel computation.
initParams = fgplvmExtractParam(model);
model = fgplvmExpandParam(model, initParams);
if dynamicsLearnt
  model = fgplvmAddDynamics(model, 'gp', dynKern);
end
lbls=[];
if labelsPresent
  minLbl = min(labels);
  maxLbl = max(labels);
  counter = 0;
  for i=minLbl:maxLbl
    counter = counter + 1;
    lbl = zeros(size(labels));
    lbl(find(labels==i))=1;
    lbls = [lbls lbl];
  end
end