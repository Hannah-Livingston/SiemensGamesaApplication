load('save1')
load('save5')
load('save8')
Re3=table2array(save1);
Re10=table2array(save5);
Re15=table2array(save8);
Re3(1, :)=[];
%Re10(1,:)=[];
close all;
%%
figure
plot(Re3(:,1), Re3(:,2), 'Linewidth', 4)
hold on;

plot(Re15(:,1), Re15(:,2), '-','Linewidth', 2)
plot(Re10(:,1), Re10(:,2), ':','Linewidth', 3)
xlabel('Angle of Attack (degrees)')
ylabel('CL')
title('CL vs AoA for NACA 63(3)618 airfoil')
legend('Re=3e6','Re=15e6', 'Re=10e6' )
%%

figure;
plot(Re3(:,1), Re3(:,3), 'Linewidth', 4)
hold on;
plot(Re10(:,1), Re10(:,3),':', 'Linewidth', 3)
plot(Re15(:,1), Re15(:,3), 'Linewidth', 2)
xlabel('Angle of Attack (degrees)')
ylabel('CD')
title('CD vs AoA for NACA 63(3)618 airfoil')
legend('Re=3e6', 'Re=10e6', 'Re=15e6')

figure;
plot(Re3(:,1), Re3(:,4), 'Linewidth', 4)
hold on; 
plot(Re10(:,1), Re10(:,4),':', 'Linewidth', 3)
plot(Re15(:,1), Re15(:,4), 'Linewidth', 2)
xlabel('Angle of Attack (degrees)')
ylabel('CM')
title('CM vs AoA for NACA 63(3)618 airfoil')
legend('Re=3e6', 'Re=10e6', 'Re=15e6')

ratio3=Re3(:,2)./Re3(:,3);
ratio10=Re10(:,2)./Re10(:,3)
ratio15=Re15(:,2)./Re15(:,3)
figure;
plot(Re3(:,1), ratio3, 'Linewidth', 4)
hold on;
plot(Re10(:,1), ratio10,':', 'Linewidth', 3)
plot(Re15(:,1), ratio15, 'Linewidth', 2)
xlabel('Angle of Attack (degrees)')
ylabel('CL/CD')
title('CL/CD vs AoA for NACA 63(3)618 airfoil')
legend('Re=3e6', 'Re=10e6', 'Re=15e6')