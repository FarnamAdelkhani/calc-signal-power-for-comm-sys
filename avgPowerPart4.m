%% Avg Power -- Part 4a
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
%% Avg Power -- Part 4b
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
%% Avg Power -- Part 4c
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