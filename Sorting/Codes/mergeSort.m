function sortedArray = mergeSort(array)
    if length(array) <= 1
        sortedArray = array;
        return;
    end
    
    mid = floor(length(array)/2);
    left = mergeSort(array(1:mid));
    right = mergeSort(array(mid+1:end));
    
    sortedArray = merge(left, right);
end

function result = merge(left, right)
    result = [];

    while ~isempty(left) && ~isempty(right)
        if left(1) <= right(1)
            result(end+1) = left(1);
            left(1) = [];
        else
            result(end+1) = right(1);
            right(1) = [];
        end
    end
    result = [result, left, right];
end