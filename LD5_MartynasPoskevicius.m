clc;
clear;

A = cell(2,2);

A{1,1} = [1 1 1; 1 1 1];
A{1,2} = [2 2; 2 2];
A{2,1} = [3 3 3 3 3];
A{2,2} = [4 4; 4 4; 4 4];

disp('Celių masyvas:'); %[output:3f69dd87]
celldisp(A); %[output:6147e1e6] %[output:809082b2]
%%
col1 = max([size(A{1,1},2), size(A{2,1},2)]);
col2 = max([size(A{1,2},2), size(A{2,2},2)]);

row1 = max([size(A{1,1},1), size(A{1,2},1)]);
row2 = max([size(A{2,1},1), size(A{2,2},1)]);

B = zeros(row1 + row2, col1 + col2);

B(1:size(A{1,1},1), 1:size(A{1,1},2)) = A{1,1};

B(1:size(A{1,2},1), col1+1:col1+size(A{1,2},2)) = A{1,2};

B(row1+1:row1+size(A{2,1},1), 1:size(A{2,1},2)) = A{2,1};

B(row1+1:row1+size(A{2,2},1), col1+1:col1+size(A{2,2},2)) = A{2,2};

disp('Bendra matrica:'); %[output:6d920941]
disp(B); %[output:1af16f2e]
%%
paskolos = 10000:1000:20000 %[output:0567d70d]
palukanos = [0.1 0.15 0.2] %[output:21804c39]
metai = 5;
menesiai = metai*12;

rezultatai = [];

for P = paskolos
    eilute = P;
    for r_metai = palukanos
        r = r_metai / 12;
        M = P * (r * (1+r)^menesiai) / ((1+r)^menesiai - 1);
        eilute = [eilute M];
    end

    rezultatai = [rezultatai; eilute];
end

fprintf('%-10s %-10s %-10s %-10s\n', 'Suma', 'Bankas 1', 'Bankas 2', 'Bankas 3'); %[output:632b67d3]

for i = 1:size(rezultatai,1) %[output:group:9cd3865a]
    fprintf('%-10.0f %-10.2f %-10.2f %-10.2f\n', rezultatai(i,1), rezultatai(i,2), rezultatai(i,3), rezultatai(i,4)); %[output:9760bd15]
end %[output:group:9cd3865a]
%%
fprintf('Iveskite sakini su daugiau nei 1 tarpu tarp zodziu'); %[output:5b191412]
sakinys = input (' ', 's')
istrinta = 0;

while contains(sakinys, '  ')
    senasIlgis = length(sakinys);
    sakinys = strrep(sakinys, '  ', ' ');
    istrinta = istrinta + 1;
end

fprintf(sakinys);
fprintf('%d', istrinta);

%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"onright"}
%---
%[output:3f69dd87]
%   data: {"dataType":"text","outputData":{"text":"Celių masyvas:\n","truncated":false}}
%---
%[output:6147e1e6]
%   data: {"dataType":"text","outputData":{"text":" \nA{1,1} =\n \n     1     1     1\n     1     1     1\n\n \n \nA{2,1} =\n \n     3     3     3     3     3\n\n \n \nA{1,2} =\n \n     2     2\n     2     2\n\n \n \nA{2,2} =\n \n     4     4\n     4     4\n     4     4\n\n \n","truncated":false}}
%---
%[output:809082b2]
%   data: {"dataType":"error","outputData":{"errorType":"runtime","text":"Error using <a href=\"matlab:matlab.lang.internal.introspective.errorDocCallback('cat')\" style=\"font-weight:bold\">cat<\/a>\nDimensions of arrays being concatenated are not consistent.\n\nError in <a href=\"matlab:matlab.lang.internal.introspective.errorDocCallback('cell2mat>concatenateCellContents', '\/MATLAB\/toolbox\/matlab\/datatypes\/cell\/cell2mat.m', 75)\" style=\"font-weight:bold\">cell2mat>concatenateCellContents<\/a> (<a href=\"matlab: opentoline('\/MATLAB\/toolbox\/matlab\/datatypes\/cell\/cell2mat.m',75,0)\">line 75<\/a>)\n                m{n} = cat(1,c{:,n});\n\nError in <a href=\"matlab:matlab.lang.internal.introspective.errorDocCallback('cell2mat', '\/MATLAB\/toolbox\/matlab\/datatypes\/cell\/cell2mat.m', 54)\" style=\"font-weight:bold\">cell2mat<\/a> (<a href=\"matlab: opentoline('\/MATLAB\/toolbox\/matlab\/datatypes\/cell\/cell2mat.m',54,0)\">line 54<\/a>)\n    m = concatenateCellContents(c);"}}
%---
%[output:6d920941]
%   data: {"dataType":"text","outputData":{"text":"Bendra matrica:\n","truncated":false}}
%---
%[output:1af16f2e]
%   data: {"dataType":"text","outputData":{"text":"     1     1     1     0     0     2     2\n     1     1     1     0     0     2     2\n     3     3     3     3     3     4     4\n     0     0     0     0     0     4     4\n     0     0     0     0     0     4     4\n\n","truncated":false}}
%---
%[output:0567d70d]
%   data: {"dataType":"matrix","outputData":{"columns":11,"name":"paskolos","rows":1,"type":"double","value":[["10000","11000","12000","13000","14000","15000","16000","17000","18000","19000","20000"]]}}
%---
%[output:21804c39]
%   data: {"dataType":"matrix","outputData":{"columns":3,"name":"palukanos","rows":1,"type":"double","value":[["0.1000","0.1500","0.2000"]]}}
%---
%[output:632b67d3]
%   data: {"dataType":"text","outputData":{"text":"Suma       Bankas 1   Bankas 2   Bankas 3  \n","truncated":false}}
%---
%[output:9760bd15]
%   data: {"dataType":"text","outputData":{"text":"10000      212.47     237.90     264.94    \n11000      233.72     261.69     291.43    \n12000      254.96     285.48     317.93    \n13000      276.21     309.27     344.42    \n14000      297.46     333.06     370.91    \n15000      318.71     356.85     397.41    \n16000      339.95     380.64     423.90    \n17000      361.20     404.43     450.40    \n18000      382.45     428.22     476.89    \n19000      403.69     452.01     503.38    \n20000      424.94     475.80     529.88    \n","truncated":false}}
%---
%[output:5b191412]
%   data: {"dataType":"text","outputData":{"text":"Iveskite sakini su daugiau nei 1 tarpu tarp zodziu","truncated":false}}
%---
