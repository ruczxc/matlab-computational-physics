%%����5.2.4  ����һ��������rk4n����ȥ���6άһ��΢�ַ�����
%%�����������������Ǵ��������ھ��ȵ糡���˶����������

tic
x=0;
dx=0.1;
y=[1 1 0 1 0 1];
for i=1:1:1000
    y=rk4n(@deriv,x,y,dx);
    y1(i)=y(1);
    y2(i)=y(2);
    y3(i)=y(3);
    x=x+dx;
end
plot3(y1,y2,y3)
set(gca,'fontsize',13);
xlabel('x(t)');
ylabel('y(t)');
zlabel('z(t)');

title('��5.2.4��ͼ')

toc
