function [timestamps,graph_data,header_data] = extract_graphable_data(sensor_data)
    %Extraction of graphable Data
    graph_data = str2double(table2cell(sensor_data)); % turns any empty data cells into Nan values
    graph_data=graph_data(:,~all(isnan(graph_data))); % Removes collums entirely comprised of Nan values
    timestamps = sensor_data.timestamp % Extracts Timestamps data
    header_data=sensor_data.Properties.VariableNames; %Obtains header names
end