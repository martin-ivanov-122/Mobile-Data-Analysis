function stat_sig = stat_analysis(varargin)

%Number of inputted questionnaire trendlines
number_questionnaire = length(varargin);

%Vector with all significant statistics extracted
stat_temp=struct('wilcoxon_test',[],'mean',[],'variance',[],'skewness',[],'kurtosis',[],'questionnaire_name',[]);
stat_sig=0;

%Statistical Analysis
for k = 1:number_questionnaire-1
    temp_val = varargin{k};
    temp_val = temp_val(:,2);
    titles = varargin{number_questionnaire};
    stat_temp.wilcoxon_test=ranksum(temp_val(1:double(int32(length(temp_val)/2))),temp_val((double(int32(length(temp_val)/2))+1):length(temp_val))); % Wilcoxon Test, with rank sum comparisons of the first and second half of the data
    stat_temp.mean=mean(temp_val); % Mean
    stat_temp.variance=var(temp_val); % Variance
    stat_temp.skewness=skewness(temp_val); % Skeness
    stat_temp.kurtosis=kurtosis(temp_val); % Kurtosis
    stat_temp.questionnaire_name=titles(k);
    if k == 1
        stat_sig=stat_temp;
    else
        stat_sig=[stat_sig;stat_temp];
    end
end
end