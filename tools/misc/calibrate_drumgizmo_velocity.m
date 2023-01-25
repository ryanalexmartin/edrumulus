
% Calibrate Drumgizmo power map to match that of a Roland e-drum module.
% Below functions are taken from powermap.cc from the Drumgizmo project.
%
%
% ./drumgizmo/drumgizmo -p close=1,position=0,diverse=0,random=0 -i midifile -I file=~/Schreibtisch/drumgizmo_snaretest.mid,midimap=~/edrumulus/tools/PearlMMX/Midimap.xml -o jackaudio ~/edrumulus/tools/PearlMMX/PearlMMX.xml
%
% x_3:
% settings.powermap_fixed2_x = 0.93;//0.95;
% settings.powermap_fixed2_y = 0.2;//0.3;
%
% x_2:
% settings.powermap_fixed2_y = 0.2;//0.3;
%
% x_1:
% settings.powermap_fixed0_x = 0.7;
% settings.powermap_fixed0_y = 0.05;
% settings.powermap_fixed1_x = 0.9;
% settings.powermap_fixed1_y = 0.1;
% settings.powermap_fixed2_x = 0.95;
% settings.powermap_fixed2_y = 0.3;

function calibrate_drumgizmo_velocity

x_roland = 10 .^ ([-63.865,-60.767,-57.64,-54.051,-52.247,-50.309,-48.511,-47.082,-45.155,-44.032,-42.526,-41.212,-40.206,-39.063,-38.203,-37.13,-36.192,-35.283,-34.546,-34.391,-33.583,-33.247,-32.624,-31.948,-31.253,-30.618,-30.052,-29.457,-28.871,-28.357,-27.767,-27.362,-26.764,-26.314,-25.787,-25.548,-25.35,-24.951,-24.415,-23.437,-23.014,-22.608,-22.413,-22.067,-21.724,-21.35,-21.01,-20.646,-20.324,-19.628,-19.336,-18.978,-18.67,-18.381,-18.106,-17.776,-17.507,-17.22,-17.088,-16.943,-16.803,-16.746,-16.449,-16.278,-15.773,-15.74,-15.572,-15.475,-15.233,-14.631,-14.118,-13.867,-13.86,-13.283,-13.246,-13.18,-12.9,-12.484,-12.305,-11.967,-11.966,-11.857,-11.739,-11.558,-11.494,-11.315,-11.29,-11.223,-11.149,-10.798,-10.454,-10.442,-10.217,-10,-9.3581,-9.249,-9.1946,-9.0551,-8.8625,-8.7959,-8.3854,-8.2022,-7.8392,-7.6261,-7.3654,-7.3499,-7.178,-7.1732,-7.1526,-7.1369,-7.0715,-7.0023,-6.7295,-6.4215,-5.519,-5.2762,-5.2646,-5.0334,-4.8305,-4.7959,-4.7495,-4.6087,-4.4192,-3.8489,-1.4902,-0.75066,-0.00053016] / 10) * 127;
x_3      = [76,25,28,31,33,36,38,38,39,40,41,42,43,44,45,45,46,47,47,48,48,48,49,49,49,50,50,51,51,51,52,52,52,53,53,54,54,54,55,55,55,56,56,56,57,57,58,59,59,60,61,61,62,62,63,63,63,63,64,64,65,66,66,67,67,68,68,68,68,69,69,69,69,69,69,70,70,70,70,71,72,72,72,73,73,73,74,75,75,76,76,76,77,77,77,77,78,78,79,79,80,81,82,83,84,85,87,88,89,89,90,90,92,92,93,94,100,103,112,114,122,123,123,124,124,125,126];
x_2      = [76,25,28,31,33,36,38,38,39,40,41,42,43,44,45,45,46,47,47,48,48,48,49,49,49,50,50,51,51,51,52,52,52,53,53,54,54,54,55,55,55,56,56,56,57,57,58,59,59,60,61,61,62,62,63,63,63,63,64,64,65,66,66,67,67,68,68,68,68,69,69,69,69,69,69,70,70,70,70,71,72,72,72,73,73,73,74,75,75,76,76,76,77,77,77,77,78,78,79,79,80,81,82,83,84,85,87,88,89,89,90,90,92,92,93,93,94,98,100,102,110,113,121,123,124,125,126];
x_1      = [76,25,28,31,33,36,38,38,39,40,41,42,43,44,45,45,46,47,47,48,48,48,49,49,49,50,50,51,51,51,52,52,52,53,53,54,54,54,55,55,55,56,56,56,57,57,58,59,59,60,61,61,62,62,63,63,63,63,64,64,65,66,66,67,67,68,68,68,68,69,69,69,69,69,69,70,70,70,70,71,72,72,72,73,73,73,74,75,75,76,76,76,77,77,77,77,78,78,79,79,80,81,82,83,84,85,87,88,89,89,90,90,92,92,93,94,98,101,106,113,115,122,123,124,124,125,126];
x_org    = [38,50,58,66,69,72,76,78,82,86,89,91,93,93,94,96,98,99,100,101,102,103,103,105,108,111,112,112,113,113,113,113,114,114,114,114,114,115,116,117,117,118,120,121,121,122,122,122,122,123,123,123,123,123,123,123,123,123,123,123,123,123,123,123,123,123,123,123,123,123,123,124,124,124,124,124,124,124,124,124,124,124,124,124,124,124,124,124,124,124,124,124,124,124,124,124,124,124,125,125,125,125,125,125,125,125,125,125,125,125,125,125,125,125,125,125,125,126,126,126,126,126,126,126,126,126,126];
close all; plot(1:127, '--'); hold on; grid on;
% plot(x_org); plot(x_1); plot(x_2); plot(x_3);
plot(x_1);
plot(x_roland);


%fixed(1).in  = 0.7;
%fixed(1).out = 0.06;
%fixed(2).in  = 0.91;
%fixed(2).out = 0.25;
%fixed(3).in  = 0.95;
%fixed(3).out = 0.26;
% -> 9.6

%fixed(1).in  = 0.7;
%fixed(1).out = 0.06;
%fixed(2).in  = 0.9;
%fixed(2).out = 0.25;
%fixed(3).in  = 0.97;
%fixed(3).out = 0.4;
% -> 6.2

%fixed(1).in  = 0.4;
%fixed(1).out = 0.01;
%fixed(2).in  = 0.9;
%fixed(2).out = 0.25;
%fixed(3).in  = 0.97;
%fixed(3).out = 0.4;
% -> 3.5

% TEST
shelf        = false;
fixed(1).in  = 0.4;
fixed(1).out = 0.01;
fixed(2).in  = 0.83;
fixed(2).out = 0.17;
fixed(3).in  = 0.97;
fixed(3).out = 0.4;
% -> 2.5
input_val    = (1:127) / 127;


y = calc_map_fct(input_val, fixed, shelf);

plot(input_val * 127, y);

e = x_roland - y;
plot(e); title(['MSE: ' num2str(mean(e .^ 2))]);

end


function y = calc_map_fct(input_val, fixed, shelf)
  if shelf
    X = [fixed(1).in, fixed(2).in, fixed(3).in];
  	Y = [fixed(1).out, fixed(2).out, fixed(3).out];
  else
    X = [0, fixed(1).in, fixed(2).in, fixed(3).in, 1];
    Y = [0, fixed(1).out, fixed(2).out, fixed(3).out, 1];
  end
  m = calcSlopes(X, Y);

  for idx = 1:length(input_val)
    y(idx) = map(input_val(idx), m, fixed, shelf) * 127;
  end
end


function out = map(in, m, fixed, shelf)
  if in < fixed(1).in
    if shelf
      out = fixed(1).out;
    else
      out = computeValue(in, struct("in", 0, "out", 0), fixed(1), m(1), m(2));
    end
  elseif in < fixed(2).in
    out = computeValue(in, fixed(1), fixed(2), m(2), m(3));
  elseif in < fixed(3).in
    out = computeValue(in, fixed(2), fixed(3), m(3), m(4));
  else
    % in >= fixed[2].in
    if shelf
      out = fixed(3).out;
    else
      out = computeValue(in, fixed(3), struct("in", 1, "out", 1), m(4), m(5));
    end
  end
end


function y = computeValue(x, P0, P1, m0, m1)
  x0      = P0.in;
  x1      = P1.in;
  y0      = P0.out;
  y1      = P1.out;
  dx      = x1 - x0;
  x_prime = (x - x0) / dx;
  y       = h00(x_prime) * y0 + h10(x_prime) * dx * m0 + h01(x_prime) * y1 + h11(x_prime) * dx * m1;
end


function y = h00(x)
  y = (1 + 2 * x) * power(1 - x, 2);
end

function y = h10(x)
  y =  x * power(1 - x, 2);
end

function y = h01(x)
  y = x * x * (3 - 2 * x);
end

function y = h11(x)
  y = x * x * (x - 1);
end


function m = calcSlopes(X, Y)
  m = zeros(length(X), 1);
  d = zeros(length(X) - 1 ,1);
  h = zeros(length(X) - 1 ,1);

  for i = 1:length(d)
    h(i) = X(i + 1) - X(i);
    d(i) = (Y(i + 1) - Y(i)) / h(i);
  end

  m(1) = d(1); % m.front() = d.front();

  for i = 2:length(m) - 1
    m(i) = (d(i - 1) + d(i)) / 2;
  end

  m(length(m)) = d(length(d)); % m.back() = d.back();

  for i = 2:length(m) - 1
    min_d = 2 * min(d(i - 1), d(i));
    m(i)  = min(min_d, (h(i) * d(i - 1) + h(i - 1) * d(i)) / (h(i - 1) + h(i)));
  end
end


