m = 1500; %liczba elementow tablicy
tests = 150; %liczba testow ktore zostan¹ przeprowadzone
inputArray = Generator(m); %Generowanie losowej tablicy o zadanej wielkosci m
outputTripleArray = zeros(1,m);
outputHammingArray = zeros(1,m);

tripleCodeTestBER = zeros (1,150); %tablice w ktorych beda zapisywane wyniki BER dla 150 testow przeprowadzonych w petli
hammingCodeTestBER = zeros(1,150);



for i=1:tests
    tripleCode = TripleEncoder(inputArray);
    %hammingCode = HammingEncoder(inputArray);
    
    tripleCode = GilbertChannel(tripleCode);
   % hammingCode = GilbertChannel(hammingCode);
    
    outputTripleArray = TripleDecoder(tripleCode);
   % outputHammingArray = HammingDecode(hammingCode);
    
    tripleCodeTestBER(i) = BER(inputArray,outputTripleArray);
   % hammingCodeTestBER(i) = BER(inputArray,outputHammingArray);
end

x = "Srednie BER dla kodu potrajajacego: "
mean(tripleCodeTestBER)
%x = "Srednie BER dla kodu hamminga: "
%avg(hammingCodeTestBER)