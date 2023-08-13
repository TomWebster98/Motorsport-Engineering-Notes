function [amp,phase,freq] = fft_VD(signal,dt)
%FFG_VD calculates the fft of a temporal signal after doing a zero
%padding to ensure that the number of points is a power of 2 
%   [Amp,Phase,Freq] = FFT_HANN(SIGNAL,DT) calculates the Amplitude, Phase
%   and Frequency using fft of a temporal SIGNAL with a sample time DT

N=length(signal);   %Number of points
%% Zero padding
power_2=log2(N);
if mod(power_2,1)==0    %The number of points is a power of 2
else
    N_new=2^(ceil(power_2));
    signal(N:N_new)=0;
    N=N_new;
end
%% FFT calculation
signalf=fft(signal,N);
%% Outputs
%Frequency
freq=(1/dt)/N*(0:(N/2-1))';
%Gain
P2=abs(signalf/N);
amp=P2(1:N/2);
amp(2:end-1)=4*amp(2:end-1);    %As sugested in http://youtu.be/V_dxWuWw8yM
clear P2
%Phase
tolerance=1e-6;
signalf(abs(signalf)<tolerance)=0;
phase(2:(N/2))=angle(signalf(2:(N/2))/N)';
end

