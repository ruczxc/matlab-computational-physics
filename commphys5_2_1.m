function decay
t=0;
y(1)=1;
c=1;
h=0.2;
i=1;
for i=1:1:800
    t(i+1)=t(i)+h;
    y(i+1)=y(i)+h*(-c*y(i));
end
figure(1)



set(gca,'fontsize',13);
plot(t,y,'b*',t,exp(-c*t),'r-');
legend('��ֵ��','��ȷ��');
grid on 
xlabel('t');
ylabel('y');
title('����5.2.1����ֵ��;�ȷ��')
