x=input('������� x : ');%������ ����� ����� �
fid=fopen('data.txt','w');%��������� ��������� ���� ��� ������
fprintf(fid,'Index	  Member        CurSum\n');%�������� ������� �����
y=x;
s=0;%����� ���������� ����������� 0
a=1;
e=0.00001;
i=0;
while abs(y)>e%�� ��� ��� ���� � ������ �
    s=s+y;%����� ����������� �������� �
    y=y*x*x*x*x*a/(a+4);%���
    a=a+4;%�����������
    i=i+1;
    fprintf(fid,'%.0f      %f      %f\n',i,y,s);
end
fprintf('����� ���� ����� = %d\n', s);
fclose(fid);
