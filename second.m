x=input('Введите x : ');%вводим любое число х
fid=fopen('data.txt','w');%открываем текстовой файл для записи
fprintf(fid,'Index	  Member        CurSum\n');%позывает текущую сумму
y=x;
s=0;%сумме изначально присваиваем 0
a=1;
e=0.00001;
i=0;
while abs(y)>e%до тех пор пока у больше е
    s=s+y;%сумме присваиваем значение х
    y=y*x*x*x*x*a/(a+4);%ряд
    a=a+4;%знаменатель
    i=i+1;
    fprintf(fid,'%.0f      %f      %f\n',i,y,s);
end
fprintf('Сумма ряда равна = %d\n', s);
fclose(fid);
