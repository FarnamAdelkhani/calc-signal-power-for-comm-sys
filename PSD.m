%% Part 1
clc;
clear all;
close all;
Fs = 1000;          % Sampling frequency
Ts = 1/Fs;          % Sampling period
Wo=100*pi           % Signal Frequency
Ph= pi/2            % Signal Phase
t = (0:Ts:8);       % Time axis
L = size(t,2);      % Total Number of Sample
Sn=2;               % Standard Deviation of AWGN
A=2;                % Amplitude
x = Sn*randn(size(t))+ A*cos(Wo*t+Ph);

nfft = 2^nextpow2(length(x));
Pxx = abs(fft(x,nfft)).^2/length(x)/Fs;
Hpsd = dspdata.psd(Pxx,'Fs',Fs,'SpectrumType','twosided')
figure;
plot(Hpsd);
axis([0 Fs-Fs/L -60 10]);

%% Part 2
y = autocorr(x);
figure;
stem(y);

%% Part 3
Fs = 1000;     % initialization of frequency
Ns = 1/Fs;     % period
Wo = 100*pi    % formula for frequency of signal
Ph = pi/2      % formula for phase of signal
t = (0:Ns:8);
L = size(t,2); % sample count
Std=2;
A=2;           % amplitude
x = Std*randn(size(t))+ A*cos(Wo*t+Ph);
p = bandpower(x) % for calculation of average power of x(t)
v = var(x)       % calculation of variance of x(t)




