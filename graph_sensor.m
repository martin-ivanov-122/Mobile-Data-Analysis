function graph_data = graph_sensor(timestamps,data,title_add,header_data,patient_name)

[rows_DataMatrix, columns_DataMatrix] = size(data); % Number of variable names to graph
Number_of_datasets = columns_DataMatrix/3;

graph_data = 1;

if rem(columns_DataMatrix,3)==0 && title_add == "Gyroscopic Data"
    for i =1:3:columns_DataMatrix
        dataset = [timestamps,data(:,i:i+2)]; %Combines data and time stamps into simble matrix
        dataset(any(isnan(dataset),2),:)=[]; %Removes any rows that have no values in them
        
        title_add_actual = title_add + " " + patient_name; %Creates title which contains the patient's name in it
        %Graphs Data
        figure
        plot(dataset(:,1),dataset(:,2),dataset(:,1),dataset(:,3),dataset(:,1),dataset(:,4));
        ylabel ('Rotation (rad/s)');
        xlabel('Time(Epochs)');
        title (title_add_actual);
        legend(strrep(char(header_data(i)),'_',' '),strrep(char(header_data(i+1)),'_',' '),strrep(char(header_data(i+2)),'_',' ')) % Legend which extracts names of variables from header file seperates the words and presents them as a proper legend
    end
elseif rem(columns_DataMatrix,3)==0 && title_add == "Accelerometer Data"
    for i =1:3:columns_DataMatrix
        dataset = [timestamps,data(:,i:i+2)]; %Combines data and time stamps into simble matrix
        dataset(any(isnan(dataset),2),:)=[]; %Removes any rows that have no values in them
        
        title_add_actual = title_add + " " + patient_name; %Creates title which contains the patient's name in it
        %Graphs Data
        figure
        plot(dataset(:,1),dataset(:,2),dataset(:,1),dataset(:,3),dataset(:,1),dataset(:,4));
        ylabel ('Acceleration (m/s)');
        xlabel('Time (Epochs)');
        title (title_add_actual);
        legend(strrep(char(header_data(i)),'_',' '),strrep(char(header_data(i+1)),'_',' '),strrep(char(header_data(i+2)),'_',' ')) % Legend which extracts names of variables from header file seperates the words and presents them as a proper legend
    end
elseif rem(columns_DataMatrix,3)==0 && title_add == "GPS Data"
    for i =1:3:columns_DataMatrix
        dataset = [timestamps,data(:,i:i+2)]; %Combines data and time stamps into simble matrix
        dataset(any(isnan(dataset),2),:)=[]; %Removes any rows that have no values in them
        
        title_add_actual = title_add + " " + patient_name; %Creates title which contains the patient's name in it
        %Graphs Data
        figure
        plot(dataset(:,1),dataset(:,2),dataset(:,1),dataset(:,3),dataset(:,1),dataset(:,4));
        ylabel ('Coourdinates');
        xlabel('Time (Epochs)');
        title (title_add_actual);
        legend(strrep(char(header_data(i)),'_',' '),strrep(char(header_data(i+1)),'_',' '),strrep(char(header_data(i+2)),'_',' ')) % Legend which extracts names of variables from header file seperates the words and presents them as a proper legend
    end
elseif rem(columns_DataMatrix,3)==0 && title_add == "Magnetometer Data"
    for i =1:3:columns_DataMatrix
        dataset = [timestamps,data(:,i:i+2)]; %Combines data and time stamps into simble matrix
        dataset(any(isnan(dataset),2),:)=[]; %Removes any rows that have no values in them
        
        title_add_actual = title_add + " " + patient_name; %Creates title which contains the patient's name in it
        %Graphs Data
        figure
        plot(dataset(:,1),dataset(:,2),dataset(:,1),dataset(:,3),dataset(:,1),dataset(:,4));
        ylabel ('Degrees');
        xlabel('Time (Epochs)');
        title (title_add_actual);
        legend(strrep(char(header_data(i)),'_',' '),strrep(char(header_data(i+1)),'_',' '),strrep(char(header_data(i+2)),'_',' ')) % Legend which extracts names of variables from header file seperates the words and presents them as a proper legend
    end
elseif rem(columns_DataMatrix,3)==0 && title_add == "Accelerometer"
    for i =1:3:columns_DataMatrix
        dataset = [timestamps,data(:,i:i+2)]; %Combines data and time stamps into simble matrix
        dataset(any(isnan(dataset),2),:)=[]; %Removes any rows that have no values in them
        
        accelerameter_data_name = char(extractBetween(strrep(char(header_data(i)),'_',' ')," "," ")); %Extracs exact name of data being graphed
        title_add_actual=title_add+" "+strrep(accelerameter_data_name,accelerameter_data_name(1),upper(accelerameter_data_name(1)))+" Data " + patient_name; % Generates the correct title based on the data type, also corrects first letter of data type to be capital, and adds patient name
        
        figure
        plot(dataset(:,1),dataset(:,2),dataset(:,1),dataset(:,3),dataset(:,1),dataset(:,4));
        ylabel ('Acceleration (cm/s)');
        xlabel('Time (Epochs)');
        title (title_add_actual);
        legend(strrep(char(header_data(i)),'_',' '),strrep(char(header_data(i+1)),'_',' '),strrep(char(header_data(i+2)),'_',' ')) % Legend which extracts names of variables from header file seperates the words and presents them as a proper legend
    end
    

end