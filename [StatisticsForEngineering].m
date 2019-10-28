filename='Enter the file name: ';
name=input(filename,'s');
fileID = fopen(name);
a=1;
b=100;
x= (b-a)*round(rand(1,100))*1000 + a;
y=sort(x);

if strcmp(name,'Text.txt')
disp('Choose an operation')
disp('A) Mean median values of data')
disp('B) Quartiles of the data (Q1, Q2, Q3, Q4)')
disp('C) Find the percentiles of data')
disp('D) Persons asymmetry-Skewness ')
disp('E) Kurtosis value')
disp('F) Test another file')
disp('Press q for quit')
disp('Press c for clear')
end

if 'A'
A={'Mean:', mean(x), 'Median:' , median(x)};

elseif 'B'
Q2=nanmedian(y);
Q1= nanmedian(y(y<=Q2));
Q3=nanmedian(y(y>=Q2));
Q4= Q3- Q1;
B={'Q1:',Q1,'Q2:',Q2,'Q3:',Q3,'Interquartile:',Q4};

elseif 'C'
C=prompt;
prompt='Enter the percentile: ';
value=input(prompt);
Prctile=prctile(x,value);

elseif 'D'
D={'Skewness value:', skewness(x)};

elseif 'E'
E={'Kurtosis Value:', kurtosis(x)};

if 'F'
F=filename2;
filename2='Enter the file name';
name2=input(filename2,'s');
fileID2=fopen(name2);
elseif strcmp(name2,'Text2.txt')
disp('Choose an operation')
disp('A) Mean median values of data')
disp('B) Quartiles of the data (Q1, Q2, Q3, Q4)')
disp('C) Find the percentiles of data')
disp('D) Persons asymmetry-Skewness ')
disp('E) Kurtosis value')
end
elseif 'q'
    quit cansel;

elseif 'c'
    %Save variables to matlab.mat
    save
end


