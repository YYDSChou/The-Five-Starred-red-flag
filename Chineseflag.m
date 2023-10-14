%主程序
clear;
figure;
hold on
rectangle('Position',[0,0,30,20],'FaceColor','r','EdgeColor','r')
        %建立以（0，0）为坐标原点，长30，宽20的矩形
PlotStarN(5,15,3,pi/2);
PlotStarN(10,18,1,pi+atan(3/5))%反正切函数计算每一个五角星旋转的角度
PlotStarN(12,16,1,pi+atan(1/7))
PlotStarN(12,13,1,pi/2)
PlotStarN(10,11,1,pi/2+atan(5/4))
title('中华人民共和国万岁！！！');
axis([0,30,-10,10]);
axis equal
axis off
