function sortedArray = quickSort(array)
    if length(array) <= 1
        sortedArray = array;
        return;
    end
    
    pivot = array(1);
    left = array(array < pivot);
    equal = array(array == pivot);
    right = array(array > pivot);
    
    sortedArray = [quickSort(left), equal, quickSort(right)];
end

