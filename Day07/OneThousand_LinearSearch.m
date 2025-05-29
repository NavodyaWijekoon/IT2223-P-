arr = 1:1000; 
len = length(arr);
target = input("Enter your target number to find: ");

tic  
found = false;

for i = 1:len
    if arr(i) == target
        found = true;
        index = i;
        break;
    end
end

if found
    disp("Linear Search: Index is: " + index);
else
    disp("Linear Search: Element Not Found");
end

elapsedTime1 = toc; 
disp("Elapsed Time for Linear Search: " + elapsedTime1 + "sec");

tic 

low = 1;
high = len;
found = false;

while low <= high
    mid = floor((low + high) / 2);
    
    if arr(mid) == target
        found = true;
        index = mid;
        break;
    elseif arr(mid) < target
        low = mid + 1;
    else
        high = mid - 1;
    end
end

if found
    disp("Binary Search: Index is: " + index);
else
    disp("Binary Search: Element Not Found");
end

elapsedTime2 = toc;
disp("Elapsed Time for Binary Search: " + elapsedTime2 + "sec");