n = 1000;

tic; %Start timing

for i = 1 :n
    disp(i);
end

elapsedTime = toc; %End timing & store elapsedTime

fprintf('Elapsed Time:%fseconds\n',elapsedTime);