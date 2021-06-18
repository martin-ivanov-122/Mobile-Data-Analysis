%% Clear
clear all               % clears all active variables
close all               % close all active figures and the likes
%% 1.1 Data Plots
%% Add To Paths to Data
datDir_P1 = 'C:\Users\marto\Documents\MATLAB\SAR Mobile Data Assigment\Data\U0254828106\';
datDir_P2 ='C:\Users\marto\Documents\MATLAB\SAR Mobile Data Assigment\Data\U3851778414\';
datDir_P3 ='C:\Users\marto\Documents\MATLAB\SAR Mobile Data Assigment\Data\U6404631153\';
datDir_P4 ='C:\Users\marto\Documents\MATLAB\SAR Mobile Data Assigment\Data\U9471833224\';
datDir_P5 ='C:\Users\marto\Documents\MATLAB\SAR Mobile Data Assigment\Data\U1320514293\';
datDir_P6 ='C:\Users\marto\Documents\MATLAB\SAR Mobile Data Assigment\Data\U8920175053\';


%% Load Data
[results_P1,sensors_P1] = load_mobile_data(datDir_P1);
[results_P2,sensors_P2] = load_mobile_data(datDir_P2);
[results_P3,sensors_P3] = load_mobile_data(datDir_P3);
[results_P4,sensors_P4] = load_mobile_data(datDir_P4);
[results_P5,sensors_P5] = load_mobile_data(datDir_P5);
[results_P6,sensors_P6] = load_mobile_data(datDir_P6);

%% Sensor Data Graphing

%Sensor Data Subject 1
DataNames = ["lamp.gyroscope", "lamp.accelerometer","lamp.gps","lamp.accelerometer.motion"];
patient_name = "U0254828106";
f=graph_sensor_data(DataNames, sensors_P1,patient_name);

%Sensor Data Subject 4
patient_name = "U9471833224";
f=graph_sensor_data(DataNames, sensors_P4,patient_name);

%Sensor Data Subject 2
patient_name = "U3851778414";
DataNames = ["lamp.gyroscope", "lamp.accelerometer","lamp.magnetometer","lamp.gps","lamp.accelerometer.motion"];
f=graph_sensor_data(DataNames, sensors_P2,patient_name);

%Sensor Data Subject 3
patient_name = "U6404631153";
f=graph_sensor_data(DataNames, sensors_P3,patient_name);

%Sensor Data Subject 6
patient_name = "U8920175053";
DataNames = ["lamp.gyroscope", "lamp.accelerometer","lamp.accelerometer.motion"];
f=graph_sensor_data(DataNames, sensors_P6,patient_name);



