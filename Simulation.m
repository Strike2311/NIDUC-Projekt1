size = 3000; %liczba elementow tablicy
tests = 150; %liczba testow ktore zostan¹ przeprowadzone
inputArray = Generator(size); %Generowanie losowej tablicy o zadanej wielkosci m
outputTripleArray = zeros(1,size);
outputHammingArray = zeros(1,size);

tripleCodeTestBER = zeros (1,150); %tablice w ktorych beda zapisywane wyniki BER dla 150 testow przeprowadzonych w petli
hammingCodeTestBER = zeros(1,150);



for i=1:tests
    tripleCode = TripleEncoder(inputArray);
    hammingCode = HammingEncoder(inputArray);
    
    tripleCode = GilbertChannel(tripleCode);
    hammingCode = GilbertChannel(hammingCode);
    
    outputTripleArray = TripleDecoder(tripleCode);
    outputHammingArray = HammingDecoder(hammingCode);
    
    [tripleCodeTestBER(i), tripleCorr(i)] = BER(inputArray,outputTripleArray);
    [hammingCodeTestBER(i), hammingCorr(i)] = BER(inputArray,outputHammingArray);
end

tripleCodeLen = length(tripleCode);
hammingCodeLen = length(hammingCode);


x = "Srednie BER dla kodu potrajajacego: "
mean(tripleCodeTestBER)
x = "Srednie BER dla kodu hamminga: "
mean(hammingCodeTestBER)
x = "Srednia efektywnoœæ E dla kodu potrajajacego: "
tripleEf = mean(tripleCorr)/tripleCodeLen
x = "Srednia efektywnoœæ dla kodu hamminga: "
hammingEf = mean(hammingCorr)/(hammingCodeLen)