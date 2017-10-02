close all;
% read file
[F,sampleFreq] = audioread('C2.aif');
% pair array with time
sampleRate = 1/sampleFreq;
timeLength = length(F);
time = 0:sampleRate:sampleRate*(timeLength-1);
% plot sound
plot(time,F(:,1))

freq = frequency(F,sampleFreq);

if freq > 415
    while freq > 415 
        freq = freq/2;
    end
else 
    while freq < 220
        freq = freq*2;
    end
end
    
getNote(freq)