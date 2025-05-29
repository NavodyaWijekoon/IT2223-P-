clc;
clear;

numVoters = input('Enter the total number of voters: ');

votes = [0, 0, 0, 0];  

for i = 1:numVoters
    fprintf('\nVoter %d: Please choose your candidate:\n', i);
    fprintf('1. Candidate A\n');
    fprintf('2. Candidate B\n');
    fprintf('3. Candidate C\n');
    fprintf('4. Candidate D\n');
    
    vote = input('Enter your vote (1-4): ');
    
      switch vote
        case 1
            votes(1) = votes(1) + 1;  
        case 2
            votes(2) = votes(2) + 1;  
        case 3
            votes(3) = votes(3) + 1;  
        case 4
            votes(4) = votes(4) + 1;  
        otherwise
            fprintf('Invalid vote! Please enter a number between 1 and 4.\n');
    end
end

fprintf('\n--- Voting Results ---\n');
fprintf('Candidate A: %d votes\n', votes(1));
fprintf('Candidate B: %d votes\n', votes(2));
fprintf('Candidate C: %d votes\n', votes(3));
fprintf('Candidate D: %d votes\n', votes(4));

[~, winnerIdx] = max(votes);  

fprintf('\nThe winner is: Candidate %c\n', char('A' + winnerIdx - 1));

while true
    fprintf('\n--- Visualization Menu ---\n');
    fprintf('1. Show Bar Chart of Votes\n');
    fprintf('2. Show Pie Chart of Votes\n');
    fprintf('3. Show Scatter Plot of Votes\n');
    fprintf('4. Exit\n');
    
    choice = input('Enter your choice (1-4): ');
    
    switch choice
        case 1
            figure;
            bar(votes);
            title('Votes for Each Candidate');
            xlabel('Candidates');
            ylabel('Number of Votes');
            set(gca, 'XTickLabel', {'Candidate A', 'Candidate B', 'Candidate C', 'Candidate D'});
            grid on;
            legend('Votes');
            
        case 2
            figure;
            pie(votes);
            title('Vote Distribution');
            legend({'Candidate A', 'Candidate B', 'Candidate C', 'Candidate D'});
            
        case 3
            figure;
            scatter(1:4, votes, 100, 'filled');
            title('Vote Distribution as Scatter Plot');
            xlabel('Candidates');
            ylabel('Number of Votes');
            set(gca, 'XTick', 1:4, 'XTickLabel', {'Candidate A', 'Candidate B', 'Candidate C', 'Candidate D'});
            grid on;
            legend('Votes');
            
        case 4
            fprintf('Exiting visualization menu...\n');
            break;
            
        otherwise
            fprintf('Invalid choice! Please select a number between 1 and 4.\n');
    end
end

fprintf('Thank you for using the Student Club Voting System!\n');