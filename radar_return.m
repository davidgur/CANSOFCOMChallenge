% radar_return.m
% David Gurevich
% Time-domain model of radar return signals from drone

% Constants
C = 299792458;

% PARAMETERS
A = 1; % real scale factor
L1 = 0.5; % distance of blade roots from centre of rotation
L2 = 0.65; % distance of blade tips from centre of rotation
N = 4; % Number of blades
R = 50; % range of center of rotation;
V = 2.5; % velocity of the center of rotation with respect to the radar
fc = 1 * 10^10; % transmitted frequency
theta = pi/6;
lambda = C / fc; % wavelength
frot = 100;

fs = 5*fc;
points = fs/10000;

t = linspace(0, 1, points);

summation_part = zeros(

summation_part = symsum(exp(-1i * (4*pi/lambda) * (((L1 + L2) / 2) * (cos(theta) * sin(2*pi*frot*t + (2*pi*n/N))))) ...
    * sinc((4*pi/lambda) * ((L2 - L1) / 2) * cos(theta) * sin(2*pi*(frot * t + n/N))), n, 0, N-1);


phi = A * exp(1i * (2*pi*fc*t - (4*pi / lambda)*(R + V*t))) * summation_part;