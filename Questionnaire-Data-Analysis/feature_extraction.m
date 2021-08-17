function features = feature_extraction(data)

data(data<0)=0; %Sets all values bellow zero to zero, since we only want the positive section of the signal

max_set_val = max(data); % Determines the max value of applitude, to be used for feature extraction

%Features
max_90 = max_set_val*0.9 %90th percentile of the respiratory signal
max_10 = max_set_val*0.1 %10th percentile of the respiratory signal


features=[max_90;max_10]; % Returns 90th and 10th percentile features
end
