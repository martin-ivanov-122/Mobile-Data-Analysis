function results_data = load_results(main_path, path_extension, file_name, file_type)

full_path = strcat(main_path,path_extension); % Creatus full path to data

addpath(full_path) % Add path to data

if file_type == ".json"
    fid = fopen(file_name); %Open file
    raw = fread(fid,inf); %Read file
    str = char(raw'); %Convert to string and save as seperate variable
    fclose(fid); %close file
    results_data = jsondecode(str); %Decodes into json structure file
end
if file_type == '.csv'
    results_data = csvimport(file_name);  % loads results data as a table, adds empty cell arrays for no data to prevent issues with delimiter differences and loss of data
    
    %Convert first line of file back into headers
    [rows_result, columns_result] = size(results_data); % to determine max number of rows
    variable_names_results = matlab.lang.makeValidName(results_data(1,:)); %Converts header names to proper variable names in matlab
    results_data=cell2table(results_data(2:rows_result,:),'VariableNames',variable_names_results); % Convers cells matrix to a tables matrix, and addes in appropriate headers
end
rmpath(full_path) % Remove path to prevent future confusion of the program
end