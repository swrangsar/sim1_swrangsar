function [ Pper ] = sPeriodogram( data, time, logData )
%SPERIODOGRAM A custom-made function to calculate periodogram.
%   This function just calculates the periodogram of the given sample thus
%   showing power spectral density of the given data.
if nargin < 2
    error('Not enough arguments!');
end

numOfPlots = nargin;
figure, subplot(numOfPlots,1,1); plot(time, data);

N = length(data);
Xn = fft(data);
Pper = ((abs(Xn).^2)/N);
if rem(N, 2) == 0
    k = -N/2:1:(N/2)-1;
else
    k = -(N-1)/2:1:(N-1)/2;
end

W = 2*pi*k/N;
subplot(numOfPlots,1,2); plot(W, fftshift(Pper));
title('Periodogram of the above data');
xlabel('Frequency (rad/s)');
ylabel('Magnitude (unitless)');

if nargin == 3
    avg = mean(logData(:));
    transformedData = logData-avg;
    N = length(transformedData);
    Xn = fft(transformedData);
    Pper = ((abs(Xn).^2)/N);
    if rem(N, 2) == 0
        k = -N/2:1:(N/2)-1;
    else
        k = -(N-1)/2:1:(N-1)/2;
    end

    W = 2*pi*k/N;
    subplot(numOfPlots,1,3); plot(W, fftshift(Pper));
    title('Periodogram of the transformed data');
    xlabel('Frequency (rad/s)');
    ylabel('Magnitude (logarithmic)');
end

end

