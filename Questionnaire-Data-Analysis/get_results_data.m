function [Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,Q9] = get_results_data(file,questionnaire_names)

number_questionnaire = length(questionnaire_names); %Determines number of questionnaire in file of questionnaire names

% Initialization of questionnaire variables for later use
Q1 = 0; 
Q2 = 0;
Q3 = 0;
Q4 = 0;
Q5 = 0;
Q6 = 0;
Q7 = 0;
Q8 = 0;
Q9 = 0;

% For loop which calculates the trend lines for each individual
% questionnaire type
for i = 1:number_questionnaire
    if cell2mat(questionnaire_names(i)) == '1phn8et4mv6azw8hw5g5'
        Q1 = calculate_trendline(file,cell2mat(questionnaire_names(i))); % Extracts trendline for questionnaire 1 via call to trenline calculation function
    elseif cell2mat(questionnaire_names(i)) == 'ccpjeqgyn65rbpj31jdf'
        Q2 = calculate_trendline(file,cell2mat(questionnaire_names(i))); % Extracts trendline for questionnaire 2 via call to trenline calculation function
    elseif cell2mat(questionnaire_names(i)) == 'drefthjw7ahmmdzjrhv7'
        Q3 = calculate_trendline(file,cell2mat(questionnaire_names(i))); % Extracts trendline for questionnaire 3 via call to trenline calculation function
    elseif cell2mat(questionnaire_names(i)) == 'h39ht4s359vqamkggb27'
        Q4 = calculate_trendline(file,cell2mat(questionnaire_names(i))); % Extracts trendline for questionnaire 4 via call to trenline calculation function
    elseif cell2mat(questionnaire_names(i)) == 'jtb7xcjfjacqm219ctgv'
        Q5 = calculate_trendline(file,cell2mat(questionnaire_names(i))); % Extracts trendline for questionnaire 5 via call to trenline calculation function
    elseif cell2mat(questionnaire_names(i)) == 'kb7rf380bepqdvagdsgh'
        Q6 = calculate_trendline(file,cell2mat(questionnaire_names(i))); % Extracts trendline for questionnaire 6 via call to trenline calculation function
    elseif cell2mat(questionnaire_names(i)) == 'p1asd5xd4f5sexxbfkyb'
        Q7 = calculate_trendline(file,cell2mat(questionnaire_names(i))); % Extracts trendline for questionnaire 7 via call to trenline calculation function
    elseif cell2mat(questionnaire_names(i)) == 'y2nzm2v00kf3e3r9cwpd'
        Q8 = calculate_trendline(file,cell2mat(questionnaire_names(i))); % Extracts trendline for questionnaire 8 via call to trenline calculation function
    elseif cell2mat(questionnaire_names(i)) == 'zzt0mqxftg7825szbf3b'
        Q9 = calculate_trendline(file,cell2mat(questionnaire_names(i))); % Extracts trendline for questionnaire 9 via call to trenline calculation function
    else
    end
end


end