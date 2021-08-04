function questionnaire_trend = graph_results_data(varargin)

%Number of inputted questionnaire trendlines
number_questionnaire = length(varargin);

questionnaire_labels = varargin{1};

%Temp Value that will hold each individual questionnaire's data
temp_val = 0;

figure
for k = 2:number_questionnaire
    temp_val = varargin{k}
    t =  uint64(temp_val(:,1));
    d = datetime(t,'ConvertFrom','epochtime','TicksPerSecond',1e3,'Format','dd-MMM-yyyy HH:mm:ss.SSSSSSSSS')
    plot(d, temp_val(:,2),'--o')
    hold on
    ylabel('Score')
    xlabel('Date')
    title('Mental Health Questionnaire Score vs. Time for Participant ',questionnaire_labels(1))
    legend(questionnaire_labels(2:length(questionnaire_labels)))
end
hold off

questionnaire_trend = 1;

end
