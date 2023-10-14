% 函数部分
%因为需要画五颗五角星，所以建立一个五角星的函数文件
function PlotStarN(x0,y0,r,theta0)
        %（x0,y0）表示五角星中心点坐标
        % r表示中心到五角星每个顶点的距离
theta1=theta0+linspace(0,2*pi,6);
        %theta1是从初始位置到每一个尖角需要转过的角度
x1=x0+r*cos(theta1);
y1=y0+r*sin(theta1);
        %（x1,y1）表示五个尖角的坐标
r2=r*sind(18)/cosd(36);
        % r2表示五角星中心到内五边形顶点的距离
theta2=theta1+deg2rad(36);
        %角度转换为弧度
x2=x0+r2*cos(theta2);
y2=y0+r2*sin(theta2);
        %（x2,y2）表示内接五边形五个顶点的坐标
x=[x1;x2];
y=[y1;y2];
        %将尖角和钝角坐标按顺序排列
x=[x(:);x1(end)];
y=[y(:);y1(end)];
        %最后加上y1的最后一个元素
hold on  
fill(x,y,'y');
f=fill(x,y,'y');
set(f,'edgecolor','y');%边缘填充成黄色
