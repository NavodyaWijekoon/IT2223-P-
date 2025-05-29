%Q1)
balance = 1000;

while true
    fprintf('\nATM Menu:\n');
    fprintf('1.Deposit\n');
    fprintf('2.Withdraw\n');
    fprintf('3.Balance Inquiry\n');
    fprintf('4.Exit\n');

    choice = input("Enter your choice: ");

    switch choice
        case 1
            amount = input('Enter the deposit amount: ');
           
            if amount > 0
                balance = balance + amount;
                fprintf('Successfully deposited $%.2f. Your new balance: $%.2f\n', amount, balance);
            else
                fprintf('Invalid deposit amount. Please enter a positive number.\n');
            end
            
        case 2 
            amount = input('Enter the withdrawal amount: ');
            
            if amount > 0
                if amount <= balance
                    balance = balance - amount;
                    fprintf('Successfully withdrew $%.2f. Your new balance: $%.2f\n', amount, balance);
                else
                    fprintf('Insufficient funds. Your current balance is $%.2f.\n', balance);
                end
            else
                fprintf('Invalid withdrawal amount. Please enter a positive number.\n');
            end
            
        case 3 
            fprintf('Your current balance is $%.2f.\n', balance);
            
        case 4  
            fprintf('Thank you for using the ATM. Goodbye!\n');
            break; 

        otherwise 
            fprintf('Invalid option. Please enter a valid choice (1-4).\n');
    end
end