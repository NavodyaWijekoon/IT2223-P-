arr = [3, 6, 8, 12, 14, 17, 25, 29, 31, 36, 42, 47, 53, 55, 62];
target = 36;

startPoint = 1;
endPoint = length(arr);
found = false;

tic 

while startPoint <= endPoint
    mid = floor((startPoint + endPoint) / 2);
    
    if arr(mid) == target
        fprintf('Element Found at index %d\n', mid);
        found = true;
        break;
    elseif arr(mid) < target
        startPoint = mid + 1;
    else
        endPoint = mid - 1;
    end
end

if ~found
    fprintf('Element Not Found\n');
end

toc