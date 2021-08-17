function dominang_freq = frequency_spectrum(data,fs)

%Converts original signal into frequency spectrum signal and returns
%dominant frequency of signal
len=length(data); % length of data
freq_spec=fft(data); %fast fourier transform of data
freq_spec=abs(data/len);
freq_spec=freq_spec(1:len/2+1);
freq_spec(2:end-1)=2.*freq_spec(2:end-1);
[M,I]=max(freq_spec);
%x=1:length(freq_spec);
%figure
%plot(x,freq_spec);
dominang_freq=I/length(data)*fs; %Returns dominant frequency
end