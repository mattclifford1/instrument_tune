close all;
tStart = 0; tEnd = 10 ; sampleFreq = 44100; 
sampleRate = 1/sampleFreq;
x = tStart:sampleRate:tEnd;

freq = 3.5;
F = sin(freq*x*(2*pi));
plot(x,F)
frequency(F,sampleFreq);