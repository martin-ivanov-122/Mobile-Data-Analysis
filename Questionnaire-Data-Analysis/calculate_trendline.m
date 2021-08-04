function questionnaire_trend_line = calculate_trendline(data,questionnaire_type)
data_length = length(extractfield(data,'activity'));

questionnaire_trend_line_temp = 0; % Temporary file that will hold the structure object corresponding to the specific questionare type

% For loop which extract the data for the specific questionnaire type
for i=1:data_length
    if data(i).activity == questionnaire_type
        h = class(questionnaire_trend_line_temp);
        if h == 'struct' % Checks if this is first datapoint for questionnaire
            questionnaire_trend_line_temp = [questionnaire_trend_line_temp,data(i)]; %Adds all other data points to the structure object that is the questionnaire trend line
        else
            questionnaire_trend_line_temp = data(i); % Equates specific object to questionnaire trend line, thus putting in the first data point
        end
    end
end

%If statement which checks if there are actual values for the given
%questionnaire
h = class(questionnaire_trend_line_temp);
if h == 'struct'
    %Data Points
    data_points = length(extractfield(questionnaire_trend_line_temp,'activity'));

    %Initialization of trend line variable
    questionnaire_trend_line = zeros(data_points,2);

    %Time Stamp Extraction
    time_stamps = extractfield(questionnaire_trend_line_temp,'timestamp') %Extracts time stamps
    questionnaire_trend_line(:,1)=time_stamps; % Adds time stamps to the trend line vector

    % For loop which generates trend line for specific questionnaire
    for i=1:data_points
        a = questionnaire_trend_line_temp(i).temporal_slices; % Extracts specific structure obejct that contains values for the given questionnaire
        a=struct2table(a); % Converts structure to table
        scores=a.value; % Vector which holds the actual scores of the questionnaire questions
        score_points = length(scores); % Determines number of values in the score
        
        %For loop which turns string answeres of yes and no into
        %logical/interger values of 1 and 0 for the purposes of scoring.
    
        %Removes non-logical variables in scores array
        h = class(scores); % Obtains class type of scores
        tf = strcmp(h,'cell'); % Checks is class is cells
        if tf == 1 % Checks if class type is cell
            scores_temp = zeros(size(scores)); % creates temporary score matrix that will contain corrected non-logical values
            %For loop which checks each value in the scores matrix for
            %non-logical values
            for j=1:score_points
                a = cell2mat(scores(j)); %take currect element
                c = str2double(a); % checks if current element is a number, and returns NaN is not
                if strcmp(a,'No')==1 % If string is No value is set to 0
                    scores_temp(j) = 0;
                elseif strcmp(a,'Yes')==1 % If string is Yes value is set to 1
                    scores_temp(j) = 1;
                elseif isnan(c) == 0 % If current value is a number it remains the same
                    scores_temp(j) =  cell2mat(scores(j));
                else % All other values are set to zero
                    scores_temp(j) = 0;
                end
            end
            scores = scores_temp; % Sets new score matrix to a double table so that it can be summated
        end
        b = sum(scores); % Summates values for all questions in given questionnaire at the specified timestamp
        questionnaire_trend_line(i,2) = b; % Provides final value for the trend line at the given timestamp
    end

else
    questionnaire_trend_line = questionnaire_trend_line_temp;
end
end