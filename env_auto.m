clear;
clc;

% Read the dataset from a text file
filename = 'data.txt'; % Data file name
delimiter = ','; % Delimiter used in the text file

% Read the data, ignoring lines that start with '%' (comments)
opts = detectImportOptions(filename, 'Delimiter', delimiter);
opts.CommentStyle = '%';
data = readmatrix(filename, opts);

% Select relevant columns
seaLevel = data(:, 2);
airPressure = data(:, 3);
seaWaterTemp = data(:, 4);
relativeHumidity = data(:, 5);
windSpeed = data(:, 6);
temperature = data(:, 7);
wvp = data(:, 8);
totalPrecipitation = data(:, 9);

% Autocorrelation analysis
maxLag = 10;  % Maximum lag to be used in the analysis

autocorr_seaLevel = autocorr(seaLevel, maxLag);
autocorr_airPressure = autocorr(airPressure, maxLag);
autocorr_seaWaterTemp = autocorr(seaWaterTemp, maxLag);
autocorr_relativeHumidity = autocorr(relativeHumidity, maxLag);
autocorr_windSpeed = autocorr(windSpeed, maxLag);
autocorr_temperature = autocorr(temperature, maxLag);
autocorr_wvp = autocorr(wvp, maxLag);
autocorr_totalPrecipitation = autocorr(totalPrecipitation, maxLag);

% Plot autocorrelation graphs
figure;

subplot(3, 3, 1);
stem(0:maxLag, autocorr_seaLevel);
title('Sea Level Autocorrelation');

subplot(3, 3, 2);
stem(0:maxLag, autocorr_airPressure);
title('Air Pressure Autocorrelation');

subplot(3, 3, 3);
stem(0:maxLag, autocorr_seaWaterTemp);
title('Sea Water Temperature Autocorrelation');

subplot(3, 3, 4);
stem(0:maxLag, autocorr_relativeHumidity);
title('Relative Humidity Autocorrelation');

subplot(3, 3, 5);
stem(0:maxLag, autocorr_windSpeed);
title('Wind Speed Autocorrelation');

subplot(3, 3, 6);
stem(0:maxLag, autocorr_temperature);
title('Temperature Autocorrelation');

subplot(3, 3, 7);
stem(0:maxLag, autocorr_wvp);
title('Water Vapour Pressure Autocorrelation');

subplot(3, 3, 8);
stem(0:maxLag, autocorr_totalPrecipitation);
title('Total Precipitation Autocorrelation');