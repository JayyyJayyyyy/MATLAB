syms x y
f=cos(x)^2+sin(y)^2-13*exp(x*(y^2))
s=subs(f,[x,y],[2,pi/2])
syms a
int(f,1,a)

diff(f,y,2)
ezsurf(f,[-1 1 pi 2*pi])
[x,y]=solve(f==(-13)*exp(x*(y^2)))
clear,clc
A=[1 2 0 -1 7;-4 78 53 -28 -47;92 29 63 38 42;74 63 -9 -7 49;-49 -99 84 12 7];
B=[36;-36;701;390;88];
X=inv(A)*B


x=[-3:0.1:5];
y=x.^4;
f=2*x;
fn=@(x)x.^4;
y=@(x)2*x;
diff=@(x)fn(x)-y(x)
x0=3
xcross=fzero(diff,x0)
plot(x,y)
hold on
plot(x,f)
plot(x,xcross,'r.','markersize',30)
hold off

