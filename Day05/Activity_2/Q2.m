clc; 
clear;

num_students = 5;
marks = zeros(1, num_students);

for i = 1:num_students
    marks(i) = input(sprintf('Enter marks for student %d (out of 100): ', i));
    
    if marks(i) >= 90
        fprintf('Grade: A\n');
    elseif marks(i) >= 80
        fprintf('Grade: B\n');
    elseif marks(i) >= 70
        fprintf('Grade: C\n');
    elseif marks(i) >= 60
        fprintf('Grade: D\n');
    else
        fprintf('Grade: F\n');
    end
end

while true
    fprintf('\nMenu:\n');
    fprintf('1. Show all marks as a bar chart\n');
    fprintf('2. Show average marks\n');
    fprintf('3. Exit\n');
    
    choice = input('Enter your choice (1-3): ');
    
    switch choice
        case 1
            bar(marks);
            title('Student Marks');
            xlabel('Student Number');
            ylabel('Marks');
            grid on;
        case 2
            avg_marks = mean(marks);
            fprintf('Average marks: %.2f\n', avg_marks);
        case 3
            fprintf('Thank you! Exiting program...\n');
            break;
        otherwise
            fprintf('Invalid choice! Please enter a valid option.\n');
    end
end