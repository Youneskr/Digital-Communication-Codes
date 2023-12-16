close all;
clear;
clc;

h = [1 1 0 0 1 0 1 ];

est_initial = 1;

miller_signal = [];

con = est_initial;

for n = 1:length(h)
    if h(n) == 1
        miller_signal = [miller_signal, con * ones(1, 50), -con * ones(1, 50)];
        con = con * -1;
    else
       if  h(n-1) == 1
        miller_signal = [miller_signal, con * ones(1, 100)];

       else 
           con = con * -1;
          miller_signal = [miller_signal, con * ones(1, 100)];
        
       end
    end
end

figure;
plot(miller_signal, 'LineWidth', 2);
title('Codage Miller');
xlabel('Échantillons');
ylabel('Amplitude');
grid on;

ylim([-2, 2]);