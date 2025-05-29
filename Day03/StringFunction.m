disp("--String Function--")
str1= 'Apple'
str2= 'Banana'
result= strcat(str1,str2)
disp(result)

disp("--Array--")
x={'hello','world','sri'}
result2=strcat(x{:})
disp(result2)

disp("--Display all without space--")
result3=strjoin(x,':')
disp(result3)

disp("--Compare--")
str1='age'
str2='tryr'

strcmp(str1,str2)
stri1='the cat sat on the mat'
indic=strfind(stri1,'cat')

disp("--Replace--")
stri1='the cat sat on the mat'
old='cat'
new='dog'
strrep(stri1,old,new)

disp("--Spliting the String--")
inputstring='Apple,banana,Orange,Grapes'
substring=strsplit(inputstring,',')

st1='apPLE'
lower(st1)
upper(st1)

disp("--Remove space infront of and behind the word--")
strtrim(' hello world ')

disp("--Get a marks from the user and print the grade--")
%marks>=90 A+
%marks>=80 A
%marks>=70 B
%marks>=60 C
%marks>=50 D
%else F

marks = input('Enter marks: ');

if marks >= 90
    disp('Grade: A+')
elseif marks >= 80
    disp('Grade: A')
elseif marks >= 70
    disp('Grade: B')
elseif marks >= 60
    disp('Grade: C')
elseif marks >= 50
    disp('Grade: D')
else
    disp('Grade: F')
end



disp("--Get three numbers from the user and print the large number--")
num1=input("Enter number 1:");
num2=input("Enter number 2:");
num3=input("Enter number 3:");

largest = max([num1, num2, num3]);
disp(['The largest number is: ', num2str(largest)]);



disp("--Get a character from a user and check it is vowel or consonent--")
letter= input("Enter the letter: ","s");

if ismember(letter, {'a', 'e', 'i', 'o', 'u'})
    disp('The character is a vowel.');
else
    disp('The character is a consonant.');
end