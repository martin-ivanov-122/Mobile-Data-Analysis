function sensor_data = extract_sensor_data(DataName, DataMatrix)

%Set up for specfic data extraction
[rows_DataMatrix, columns_DataMatrix] = size(DataMatrix); % to determine max number of rows
g=DataMatrix.Properties.VariableNames; %Obtains header names
sensor_data=array2table(zeros(1,columns_DataMatrix),'VariableNames',g); %Establishes initial array for graphical data from a specific sensor with appropriate header names

%Correction of timestamp data
time = DataMatrix.timestamp;
min_time = min(time);
time=time-min_time;
DataMatrix(:,1)=table(time);

%For loop which extracts specific data for graphing purposes
for i=1:rows_DataMatrix
    s=DataMatrix.sensor; %extraction of sensor data labels
    d=string(char(s(i))); %extraction of current data label
    if d==DataName % Checks if data label is the same is stated data name
        c=DataMatrix(i,:); % Extracts data sample with specific data name identified
        sensor_data = [sensor_data;c]; % adds data sample to matrix which holds the data for the specific sensor
    end
end

[rows_sensor, columns_sensor] = size(sensor_data); % to determine max size of rows in matrix

sensor_data=sensor_data(2:rows_sensor,:); % Removes first sample as it only existed to make the table
sensor_data=sensor_data(:,~all(ismissing(sensor_data))); % removes collumns filled with Nan
end