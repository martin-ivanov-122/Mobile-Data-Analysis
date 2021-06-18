function sensor_data = graph_sensor_data(DataNames, DataMatrix, patient_name)

data_names = length(DataNames); % Number of variable names to graph

%For loop which extracts a given sensor data, and then graphs it
%appropriately
for i = 1:data_names
    sensor_data=extract_sensor_data(DataNames(i), DataMatrix); %Gathers data for a specific sensor based on the dataname matrix
    if DataNames(i) == "lamp.gyroscope" % Checks is data correspons of gyroscopse 
        %Call to function which extracts that data being graphed
        [timestamps,graph_data,header_data]=extract_graphable_data(sensor_data); %Extracts graphable data, timestamps and header data for graphing
        head_len = length(header_data); % Determines length of header matrix
        header_data=header_data(3:head_len); %Extracts specific data headers
        a= graph_sensor(timestamps,graph_data,"Gyroscopic Data",header_data,patient_name);
    elseif DataNames(i) == "lamp.accelerometer"
        %Call to function which extracts that data being graphed
        [timestamps,graph_data,header_data]=extract_graphable_data(sensor_data); %Extracts graphable data, timestamps and header data for graphing
        head_len = length(header_data); % Determines length of header matrix
        header_data=header_data(3:head_len); %Extracts specific data headers
        a= graph_sensor(timestamps,graph_data,"Accelerometer Data",header_data,patient_name);
    elseif DataNames(i) == "lamp.gps"
        %Call to function which extracts that data being graphed
        [timestamps,graph_data,header_data]=extract_graphable_data(sensor_data); %Extracts graphable data, timestamps and header data for graphing
        head_len = length(header_data); % Determines length of header matrix
        header_data=header_data(3:head_len); %Extracts specific data headers
        a= graph_sensor(timestamps,graph_data,"GPS Data",header_data,patient_name);
    elseif DataNames(i) == "lamp.magnetometer"
        %Call to function which extracts that data being graphed
        [timestamps,graph_data,header_data]=extract_graphable_data(sensor_data); %Extracts graphable data, timestamps and header data for graphing
        head_len = length(header_data); % Determines length of header matrix
        header_data=header_data(3:head_len); %Extracts specific data headers
        a= graph_sensor(timestamps,graph_data,"Magnetometer Data",header_data,patient_name);
    elseif DataNames(i) == "lamp.accelerometer.motion"
        %Call to function which extracts that data being graphed
        [timestamps,graph_data,header_data]=extract_graphable_data(sensor_data); %Extracts graphable data, timestamps and header data for graphing
        head_len = length(header_data); % Determines length of header matrix
        header_data=header_data(3:head_len); %Extracts specific data headers
        a= graph_sensor(timestamps,graph_data,"Accelerometer",header_data,patient_name);
    else
    end

end
end