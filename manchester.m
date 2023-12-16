close all;
clear;
clc;

V = 5;
F = 500;
sequence = [1 1 0 1];
code_manchester = [];

for i = 1:length(sequence)
    if sequence(i) == 0
        code_manchester = [code_manchester -V*ones(1, F/2)];
        code_manchester = [code_manchester V*ones(1, F/2)];
    else
        code_manchester = [code_manchester V*ones(1, F/2)];
        code_manchester = [code_manchester -V*ones(1, F/2)];
    end
end

t = linspace(0, length(code_manchester), length(code_manchester));
figure;
plot(t, code_manchester);

title('Signale codé en Manchester');
xlabel('Temps (s)');
ylabel('Amplitude');
grid on;
ylim([-V-1, V+1]);