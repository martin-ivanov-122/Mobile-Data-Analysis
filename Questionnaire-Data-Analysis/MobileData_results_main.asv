%% Clear
clear all               % clears all active variables
close all               % close all active figures and the likes

%% 1 Load Data
%% Add To Paths to Data
path = pwd; % Path to current folder 

%Additional File paramater set up for ease of loading
path_name_extension = ["\export\U0571781825\","\export\U1320514293\","\export\U1431916954\","\export\U3354287398\","\export\U6404631153\","\export\U7835074301\","\export\U8509049816\","\export\U8920175053\","\export\P1\","\export\U0254828106\","\export\U3851778414\","\export\U9471833224\"]; %File extensions for all patients
file_name = 'result_event.json'; % File name for results based on JSON files
file_name2 = 'sensor_data_july30.json'; % File name for results based on CSV files
file_type = ".json"; %File type for JSON
%file_type2 = ".csv"; %File type for excel CSV


%Call to function which loads files
P1_results=load_results(path, path_name_extension(1), file_name, file_type); %Loading Participant 1 files
P2_results=load_results(path, path_name_extension(2), file_name, file_type); %Loading Participant 2 files
P3_results=load_results(path, path_name_extension(3), file_name, file_type); %Loading Participant 3 files
P4_results=load_results(path, path_name_extension(4), file_name, file_type); %Loading Participant 4 files
P5_results=load_results(path, path_name_extension(5), file_name, file_type); %Loading Participant 5 files
P6_results=load_results(path, path_name_extension(6), file_name, file_type); %Loading Participant 6 files
P7_results=load_results(path, path_name_extension(7), file_name, file_type); %Loading Participant 7 files
P8_results=load_results(path, path_name_extension(8), file_name, file_type); %Loading Participant 8 files

%P9_results=load_results(path, path_name_extension(9), file_name2, file_type2);
%P10_results=load_results(path, path_name_extension(10), file_name2, file_type2);
%P11_results=load_results(path, path_name_extension(11), file_name2, file_type2);



%% Graph Data over time

%Getting the names of all unique questionare activities
Activity_names_P1 = extractfield(P1_results,'activity'); % Extract activity field from structure object of partipant 1
Activity_names_P2 = extractfield(P2_results,'activity'); % Extract activity field from structure object of partipant 2
Activity_names_P4 = extractfield(P4_results,'activity'); % Extract activity field from structure object of partipant 4
Activity_names_P5 = extractfield(P5_results,'activity'); % Extract activity field from structure object of partipant 5
Activity_names_P8 = extractfield(P8_results,'activity'); % Extract activity field from structure object of partipant 8

%Combination of all activity names in the list for easier location of
%unique names
Activity_names = [Activity_names_P1,Activity_names_P2,Activity_names_P4,Activity_names_P5,Activity_names_P8];


Activity_names_unique = unique(Activity_names); % Determines unique strings in the file and returns them, thus providing the exact number unique questionare types and their names

%Call to function which returns the trend lines of each questionnaire score over time
[P1_Q1,P1_Q2,P1_Q3,P1_Q4,P1_Q5,P1_Q6,P1_Q7,P1_Q8,P1_Q9] = get_results_data(P1_results,Activity_names_unique); % Questionnaire Data trend lines for partipant 1
[P2_Q1,P2_Q2,P2_Q3,P2_Q4,P2_Q5,P2_Q6,P2_Q7,P2_Q8,P2_Q9] = get_results_data(P2_results,Activity_names_unique); % Questionnaire Data trend lines for partipant 2
[P4_Q1,P4_Q2,P4_Q3,P4_Q4,P4_Q5,P4_Q6,P4_Q7,P4_Q8,P4_Q9] = get_results_data(P4_results,Activity_names_unique); % Questionnaire Data trend lines for partipant 4
[P5_Q1,P5_Q2,P5_Q3,P5_Q4,P5_Q5,P5_Q6,P5_Q7,P5_Q8,P5_Q9] = get_results_data(P5_results,Activity_names_unique); % Questionnaire Data trend lines for partipant 5
[P8_Q1,P8_Q2,P8_Q3,P8_Q4,P8_Q5,P8_Q6,P8_Q7,P8_Q8,P8_Q9] = get_results_data(P8_results,Activity_names_unique); % Questionnaire Data trend lines for partipant 8


%Partipant 1
%Set up for legend of graph
questionnaire_labels = ["U0571781825","MIOS-14","GAD-7","GAD-2","MIOS-5","UCLA-3","PSS-4","PHQ-9","PHQ-2","PSS-10"];

%Call to function which graphs the trendlines
a=graph_results_data(questionnaire_labels,P1_Q1,P1_Q2,P1_Q3,P1_Q4,P1_Q5,P1_Q6,P1_Q7,P1_Q8,P1_Q9); % Questionnaire Data trend lines for patient 1

%Partipant 2
%Set up for legend of graph
questionnaire_labels = ["U1320514293","MIOS-14","GAD-7","GAD-2","MIOS-5","UCLA-3","PSS-4","PHQ-9","PHQ-2","PSS-10"];

%Call to function which graphs the trendlines
a=graph_results_data(questionnaire_labels,P2_Q1,P2_Q2,P2_Q3,P2_Q4,P2_Q5,P2_Q6,P2_Q7,P2_Q8,P2_Q9); % Questionnaire Data trend lines for patient 1

%Partipant 4
%Set up for legend of graph
questionnaire_labels = ["U3354287398","UCLA-3","PSS-4"];

%Call to function which graphs the trendlines
a=graph_results_data(questionnaire_labels,P4_Q5,P4_Q6); % Questionnaire Data trend lines for patient 1

%Partipant 5
%Set up for legend of graph
questionnaire_labels = ["U6404631153","MIOS-14","GAD-7","GAD-2","MIOS-5","PSS-4","PHQ-9","PHQ-2"];

%Call to function which graphs the trendlines
a=graph_results_data(questionnaire_labels,P5_Q1,P5_Q2,P5_Q3,P5_Q5,P5_Q6,P5_Q7,P5_Q8); % Questionnaire Data trend lines for patient 1

%Partipant 8
%Set up for legend of graph
questionnaire_labels = ["U8920175053","MIOS-14","GAD-7","GAD-2","UCLA-3","PSS-4","PHQ-9","PHQ-2","PSS-10"];

%Call to function which graphs the trendlines
a=graph_results_data(questionnaire_labels,P8_Q1,P8_Q2,P8_Q3,P8_Q5,P8_Q6,P8_Q7,P8_Q8,P8_Q9); % Questionnaire Data trend lines for patient 1


