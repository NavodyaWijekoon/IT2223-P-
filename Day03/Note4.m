letter =input('Enter a letter :','s');
letter=lower(letter);

if length(letter) ==1 && ischar(letter)
    if any(letter ==['a','e','i','o','u'])
        disp('The letter is a Vowel');
    else
        disp('The letter is a consonant');
    end
else
    disp('Please enter a valid single letter');
end