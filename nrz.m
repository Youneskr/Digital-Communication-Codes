close all;
clear;
clc;

V = 5;
F = 500;
sequence = [1 1 0 1];
code_nrz = [];

for i = 1:length(sequence)
    if sequence(i) == 0
        code_nrz = [code_nrz -V*ones(1, F)];
    else
        code_nrz = [code_nrz V*ones(1, F)];
    end
end

t = linspace(0, length(code_nrz), length(code_nrz));
figure;
plot(t, code_nrz);

title('Signale codé en NRZ');
xlabel('Temps (s)');
ylabel('Amplitude');
grid on;
ylim([-V-1, V+1]);