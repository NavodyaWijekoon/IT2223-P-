arr = [3,6,8,12,14,17,25,29,31,36,42,47,53,55,62];

tic
target = 8;
n = length(arr);
found = false;

for i = 1:n
    if arr(i) == target
        found = true;
        index = i;
        break;
    end
end

if found
     fprintf('The target element is found at index: %d \n', index);
else
     fprintf('The target element is not found');
end
toc;