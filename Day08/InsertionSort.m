arr = [15, 16, 6, 8, 5];
n = length(arr);

for i = 2:n
    key = arr(i);
    j = i - 1;
    
   while j >= 1 && arr(j) > key
        arr(j + 1) = arr(j);
        j = j - 1;
    end
    arr(j + 1) = key;
end

disp('Sorted array is:');
disp(arr);
