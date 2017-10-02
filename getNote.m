function note = getNote(freq)
scale = [220,233.08,246.94,261.63,277.18,293.66,311.13,329.63,349.23,369.99,392,415.3];
letter = {'a','b flat','b','c','c sharp','d','e flat','e','f','f sharp','g','a flat'};
for i = 1:length(scale)
    scale(i) = scale(i) - freq;
end
scale = abs(scale);
[~,ind] = min(scale);
note = letter(ind);

