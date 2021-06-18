function [results,sensors] = load_mobile_data(dataDir)
addpath(dataDir); % add path to data so that it can be loaded
results=csvimport('result_event.csv'); % loads results data as a table, adds empty cell arrays for no data to prevent issues with delimiter differences and loss of data
sensors=csvimport('sensor_event.csv'); % loads sensors data as a cell array, adds empty cell arrays for no data to prevent issues with delimiter differences and loss of data

%Convert first line of file back into headers
[rows_result, columns_result] = size(results); % to determine max number of rows
[rows_sensors, columns_sensors] = size(sensors); % to determine max number of rows

variable_names_results = matlab.lang.makeValidName(results(1,:)); %Converts header names to proper variable names in matlab
variable_names_sensors = matlab.lang.makeValidName(sensors(1,:)); %Converts header names to proper variable names in matlab

results=cell2table(results(2:rows_result,:),'VariableNames',variable_names_results); % Convers cells matrix to a tables matrix, and addes in appropriate headers
sensors=cell2table(sensors(2:rows_sensors,:),'VariableNames',variable_names_sensors); % Convers cells matrix to a tables matrix, and addes in appropriate headers


end