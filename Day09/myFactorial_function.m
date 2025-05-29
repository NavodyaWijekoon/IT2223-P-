% 5! = 5 * 4!
%    = 5 * 4 * 3!
%    = 5 * 4 * 3 * 2!
%    = 5 * 4 * 3 * 2 * 1!

function result = myFactorial_function(n)
    if n == 0
        result = 1;
    else
        result = n * myFactorial_function(n - 1);
    end
end
