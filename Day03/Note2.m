userNumber=input('Enter Your marks');
disp(['you Entered:',num2str(userNumber)]);

if userNumber>=90
    disp('A+')
elseif userNumber>=80
      disp('A')
elseif userNumber>=70
            disp('B+')
elseif userNumber>=60
                disp('B')
elseif userNumber>=50
                    disp('D')
                else
                    disp('F')
                end    