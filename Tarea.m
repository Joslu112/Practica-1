close all

 angle_rad= deg2rad(90);
 
for t=0: 0.01:angle_rad
    
    clf
    
line([-2 2],[0 0],[0 0],'color',[1 0 0],'linewidth',2.5); %Establece el eje en x rojo
line([0 0],[-2 2],[0 0],'color',[0 1 0],'linewidth',2.5); %Establece el eje en y verde

p1=[-4 -2];
p2=[4 -2];
p3=[4 2];
p4=[-4 2];

line([p1(1) p2(1)], [p1(2) p2(2)],[0 0]);
line([p2(1) p3(1)], [p2(2) p3(2)],[0 0]);
line([p3(1) p4(1)], [p3(2) p4(2)],[0 0]);
line([p4(1) p1(1)], [p4(2) p1(2)],[0 0]);
% Rotacion del rectangulo a 90°



Rz = [cos(t) -sin(t); sin(t) cos(t)];

p1r= Rz*p1';
p2r= Rz*p2';
p3r= Rz*p3';
p4r= Rz*p4';

line([p1r(1) p2r(1)], [p1r(2) p2r(2)],[0 0]);
line([p2r(1) p3r(1)], [p2r(2) p3r(2)],[0 0]);
line([p3r(1) p4r(1)], [p3r(2) p4r(2)],[0 0]);
line([p4r(1) p1r(1)], [p4r(2) p1r(2)],[0 0]);

pause(0.01);

end
