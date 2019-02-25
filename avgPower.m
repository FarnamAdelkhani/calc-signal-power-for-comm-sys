  %% Avg Power -- Calculate and plot the two-sided power spectrum density PSD for x(t) in the range [0, (Fs- Fs/L)] where Fs is the Nyquist frequency.
Fs = 1000;      % initialization of frequency
Ns = 1/Fs;      % period
Wo = 500*pi     % formula for frequency of signal
Ph = pi/2       % formula for phase of signal
t = (0:Ns:8);
L = size(t,2);  % sample count
Std=0;
A=2;            % amplitude
x = Std*randn(size(t))+ A*cos(Wo*t+Ph);
p = bandpower(x) % for calculation of average power of x(t)
v = var(x)      % calculation of variance of x(t)
snr(x)


  %% Avg Power -- Calculate and plot the autocorrelation function 𝑅𝑥(𝜏) (Note: the plot should be a symmetrical function with respect to the origin)
Fs = 1000;      % initialization of frequency
Ns = 1/Fs;      % period
Wo = 1000*pi    % formula for frequency of signal
Ph = pi/2       % formula for phase of signal
t = (0:Ns:8);
L = size(t,2);  % sample count
Std=0;
A=2;            %it is amplitude
x = Std*randn(size(t))+ A*cos(Wo*t+Ph);
p = bandpower(x) % for calculation of average power of x(t)
v = var(x)       % calculation of variance of x(t)
%snr(x)


  %% Avg Power -- Using the PSD function and autocorrelation function, calculate the average power of x(t) and show that this value is same as the one obtained by simply calculating the Variance of x(t).
Fs = 1000;      % initialization of frequency
Ns = 1/Fs;      % period
Wo = 1500*pi    % formula for frequency of signal
Ph = pi/2       % formula for phase of signal
t = (0:Ns:8);
L = size(t,2);  % sample count
Std=0;
A=2;            %it is amplitude
x = Std*randn(size(t))+ A*cos(Wo*t+Ph);
p = bandpower(x) % for calculation of average power of x(t)
v = var(x)      % calculation of variance of x(t)
%snr(x)
