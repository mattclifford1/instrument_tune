function frequency = frequency(F,sampleFreq)

timeLength = length(F);
% do fourier transform N.B. output of the fourier transform are complex
Z = fft(double(F));
% magZ = abs(Z);

% freq = max(magZ)

P2 = abs(Z/timeLength);
P1 = P2(1:timeLength/2+1);
P1(2:end-1) = 2*P1(2:end-1);

f = sampleFreq*(0:(timeLength/2))/timeLength;

plot(f,P1) 
% title('Single-Sided Amplitude Spectrum of X(t)')
xlabel('f(Hz)')
ylabel('Magnitude')

[~,ind] = max(P1);
frequency = f(ind);