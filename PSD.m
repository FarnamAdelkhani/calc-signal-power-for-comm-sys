  %% Calculate and plot the two-sided power spectrum density PSD for x(t) in the range [0, (Fs- Fs/L)] where Fs is the Nyquist frequency.
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


  %% Calculate and plot the autocorrelation function 𝑅𝑥(𝜏) (Note: the plot should be a symmetrical function with respect to the origin)
y = autocorr(x);
figure;
stem(y);


  %% Using the PSD function and autocorrelation function, calculate the average power of x(t) and show that this value is same as the one obtained by simply calculating the Variance of x(t).
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
