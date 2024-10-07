#import"@preview/physica:0.9.2":*
#import "template.typ": *

= 静电学中的边值问题 Boundary-Value Problems in Electrostatics

== Method of Images 镜像电荷法

镜像电荷：
- 适当的位置
- 适当的大小
- 相关区域外部
- 能够模拟所需的边界条件
根据静电唯一性定理，镜像电荷法是一种求解边值问题的有效方法。*将有边界的实际问题替换为有镜像电荷但无边界的放大区域。*

#problem[

A point charge located in front of an infinite plane conductor at zero potential.

#figure(
  image("pic/2024-09-27-15-39-01.png", width: 80%),
  numbering: none,
)

左侧是原始电位问题，右侧是等效图像问题。
]

== 接地导体存在时的点电荷 Point Charge in the Presence of a Grounded Conducting Sphere

#problem[

What is the potential produced by a point charge $q$ located at $y$ relative to the origin, around which is centered a grounded conducting sphere of radius $a$? And what is the force acting on the charge $q$?

#figure(
  image("pic/2024-09-27-15-41-20.png", width: 80%),
  numbering: none,
)

Grounded conducting sphere of radius $a$, with charge $q$ and image charge $q'$.

]

#solution[

现在确定镜像电荷的位置和大小：
$
Phi(vb(x)) = q/(4 pi epsilon_0 abs(vb(x)- vb(y))) + q'/(4 pi epsilon_0 abs(vb(x)- vb(y'))) = q/(4 pi epsilon_0 abs(x vu(n)- y vu(n'))) + q'/(4 pi epsilon_0 abs(x vu(n)- y' vu(n')))
$
球面上有
$
Phi(x=a) = q/(4 pi epsilon_0) 1/(a abs(vu(n) - y/a vu(n'))) + q'/(4 pi epsilon_0) 1/(y' abs(vu(n') - a/y' vu(n))) = 0
$
得到
$
q/a = -q'/y', y/a = a/y' => q' = -a/y q , y' = a^2/y
$
这样就可以得到电势
$
Phi(vb(x)) = q/(4 pi epsilon_0) (1/abs(x vu(n) - y vu(n')) - a/y 1/abs(x vu(n) - a^2/y vu(n'))) 
$
#newpara()

进一步，我们可以求出*球体表面感应电荷*
$
sigma = vb(D) dot vu(n) = - epsilon_0 grad Phi dot vu(n) = - epsilon_0 eval(partialderivative(Psi,x))_(x=a)
$

用余弦定理展开$Phi$，有
$
Phi(vb(x)) = q/(4 pi epsilon_0) (1/sqrt(x^2 + y^2 - 2 x y cos gamma) - a/y 1/sqrt(x^2 + a^4/y^2 - 2 x a^2/y cos gamma))
$
从而
$
sigma &= - epsilon_0 eval(partialderivative(Psi,x))_(x=a) \
&= - q/(4 pi a^2) a/y (1- a^2/y^2)/(1 + a^2/y^2 - 2 a/y cos gamma)^(3/2)
$

#newpara()

最后，我们可以求出*电荷$q$所受的力*

可以用镜像电荷对其作用力来计算，有
$
y - y' = y(1 - a^2/y^2)
$
直接利用Coulomb定律，有
$
abs(vb(F)) = 1/(4 pi epsilon_0) q^2/a^2 (a/y)^3 (1 - a^2/y^2)^(-2)
$
另外的方法，利用作用在球面上的总力也可以求解：


*上述结果同样适用于球体内部的电荷$q$，但球体上的总感应电荷并不等同于镜像电荷的大小，而是$-q$*。
]

== 存在带电绝缘导电球体时的点电荷 Point Charge in the Presence of a Charged, Insulated, Conducting Sphere

#problem[

What is the potential produced by a point charge $q$ located at $y$ relative to the origin, around which is centered $a$ *charged, insulated, conducting* sphere with the *total charge of* $Q$ and radius of $a$? And what is the force acting on the charge $q$?

]

#solution[

通过线性叠加求解电势：
- 从接地导电球开始
- 断开接地线，在球体中加入一定量的电荷$(Q-q')$，添加的电荷会均匀地分布在球面上
$
q' = - a/y q, y' = a^2/y 
$
有电势
$
Phi(vb(x)) = 1/(4 pi epsilon_0) (q/(abs(vb(x) - vb(y))) - (a q)/(y abs(vb(x) - a^2/y^2 vb(y))) + (Q + a/y q)/(abs(vb(x) )))
$
作用力相当于镜像电荷的作用力加上球体上的总感应电荷的作用力
$
vb(F) &= (1/(4 pi epsilon_0) q(Q+a/y q)/y^2 - 1/(4 pi epsilon_0) q^2/a^2 (a/y)^3 (1 - a^2/y^2)^(-2)) vb(y)/y\
&= 1/(4 pi epsilon_0) q/y^2 (Q- (q a^3(2y^2 - a^2))/(y (y^2 - a^2)^2)) vb(y)/y
$
当$y>>a$的时候，可以有近似
$
vb(F) = 1/(4 pi epsilon_0) q/y^2 (Q - (2q a^3)/y^3) vb(y)/y = 1/(4 pi epsilon_0) (q Q)/y^2 vb(y)/y
$
当$Q>>q$时，为零力位置（不稳定平衡点）：
$
Q = (q a^3(2y^2 - a^2))/(y (y^2 - a^2)^2) approx (q a^3 dot a^2)/(a dot 4a dot (y-a)^2 ) = (q a^2)/(4(y-a)^2)\
=> y approx a(1+1/2sqrt(q/Q))
$

#figure(
  image("pic/2024-10-07-21-28-00.png", width: 40%),
  numbering: none,
  caption: [半径为$a$的绝缘导电球体携带总电荷$Q$时对点电荷$q$的作用力。]
)


]

== 固定电位导电球附近的点电荷 Point Charge Near a Conducting Sphere at Fixed Potential

#problem[

What is the potential produced by a point charge $q$ located at $y$ relative to the origin, around which is centered a conducting sphere held at a *fixed potential* $V$ with the radius of $a$? And what is the force acting on the charge $q$? Find the potential by linear superposition. 

]

#solution[

相当于在接地导电球的基础上，加上一个电势为$V$的电荷
$
Q = 4 pi epsilon_0 a V
$

]

== Conducting Sphere in a Uniform Electric Field by Method of Images 静电场中的导电球

#problem[

What is the potential produced by a conducting sphere of radius a in a uniform electric field $E_0$?

]

#solution[

均匀电场：位于$z=-R$和$+R$位置的两个电荷$+Q$和$-Q$之间的电场近似恒定，极限为$R,Q➔∞$，$Q/R^2$恒定。


#figure(
  image("pic/2024-10-07-22-37-45.png", width: 80%),
  numbering: none,
)

#figure(
  image("pic/2024-10-07-22-37-52.png", width: 80%),
  numbering: none,
)

势能可以写成
$
Phi(vb(x)) = (Q/(4 pi epsilon_0))/(r^2 + R^2 + 2 r R cos theta)^(1/2) - (Q/(4 pi epsilon_0))/(r^2 + R^2 - 2 r R cos theta)^(1/2) \
- (a Q)/(4 pi epsilon_0)/(R (r^2 + a^4/R^2 + (2 a^2 r)/R cos theta)^(1/2)) + (a Q)/(4 pi epsilon_0)/(R (r^2 + a^4/R^2 - (2 a^2 r)/R cos theta)^(1/2))
$
考虑到$R>>r$：
$
Phi(vb(x)) =& Q/(4 pi epsilon_0 R) (1-r/R cos theta) - Q/(4 pi epsilon_0 R) (1+r/R cos theta) \
&- (a Q)/(4 pi epsilon_0 r R) (1-a^2/(r R) cos theta) + (a Q)/(4 pi epsilon_0 r R) (1+a^2/(r R) cos theta)\
=& 1/(4 pi epsilon_0) (- (2 Q)/R^2 r cos theta + (2 Q)/R^2 a^3/r^2 cos theta)\
=&- E_0 (r - a^3/r^2) cos theta\
=&- E_0 z + E_0 a^3/r^3 z
$
诱导表面电荷密度
$
sigma = - epsilon_0 eval(partialderivative(Phi,x))_(x=a) = 3 epsilon_0 E_0 cos theta
$
1. $-E_0 z$： 就是均匀场$E_0$的电势
2. 电荷密度的表面积分为0，接地球和绝缘球没有区别。
]

== Green Function for the Sphere; General Solution for the Potential of a Sphere 球体的Green函数；球体电势的一般解

=== Green Function

$
nabla^('2) G(vb(x), vb(x')) = - 4 pi delta(vb(x) - vb(x'))\
G(vb(x), vb(x')) = 1/abs(vb(x) - vb(x')) + F(vb(x), vb(x'))\
nabla^('2) F(vb(x), vb(x')) = 0
$
为满足同质边界条件而选择的单位源及其镜像（或多个镜像）所产生的电势，只是适合于 Dirichlet 或 Neumann 边界条件的 Green 函数。

=== Green Function for the Sphere

根据接地导电球体时的点电荷：
$
Phi(vb(x)) = q/(4 pi epsilon_0) 1/abs(x vu(n) - y vu(n')) + q'/(4 pi epsilon_0) 1/abs(x vu(n) - y' vu(n'))\
q' = -a/y q, y' = a^2/y
$
其中
- $x$：势能被计算出的$P$点
- $x'$：单位源的位置$P'$
将$y->x',q->4 pi epsilon_0$，得到Green函数
$
G(vb(x), vb(x')) = 1/abs(vb(x) - vb(x')) - a/(x'abs(vb(x) - a^2/x'^2 vb(x')))
$

#grid(columns: (1fr, 1fr))[
#figure(
  image("pic/2024-10-08-00-09-59.png", width: 80%),
  numbering: none,
)
][
#figure(
  image("pic/2024-10-08-00-10-08.png", width: 80%),
  numbering: none,
)
]

将点$P$, $P'$写成球坐标形式
$
P' &: (x' sin theta' cos phi', x' sin theta' sin phi', x' cos theta')\
P &: (x sin theta cos phi, x sin theta sin phi, x cos theta)
$
根据
$
(P_x - P'_x)^2 + (P_y - P'_y)^2 + (P_z - P'_z)^2 = x^2 + x'^2 - 2 x x' cos gamma
$
得到
$
cos gamma = cos theta cos theta' + sin theta sin theta' cos(phi - phi')
$
从而最终的Green函数为
#text(fill:red)[
$
G(vb(x), vb(x')) &= 1/abs(vb(x) - vb(x')) - a/(x'abs(vb(x) - a^2/x'^2 vb(x')))\
&= 1/abs(vb(x) - vb(x')) + F(vb(x), vb(x'))\
G(vb(x), vb(x')) &= 1/sqrt(x^2 + x'^2 - 2 x x' cos gamma) - 1/(sqrt((x^2 x'^2)/a^2 + a^2 - 2 x x' cos gamma))
$
]
- 对称性：
  $
  G(vb(x), vb(x')) = G(vb(x'), vb(x))
  $
  源点和观测点的物理互换性
- $G=0$如果$x$或者$x'$在球表面

=== General Solution for the Potential

Dirichlet 边界条件@DbGreen 下静电边界值问题的形式解法
$
Phi(vb(x)) = 1/(4 pi epsilon_0) integral_V G_D(vb(x),vb(x')) rho(vb(x')) dd(vb(x'), 3) - 1/(4 pi) integral.cont_S Phi(vb(x')) partialderivative(G_D,n') dd(vb(a)')\
$
其中
$
G_D (vb(x), vb(x')) = 0
$
对于$vb(x')$在球面$S$上
$
G(vb(x), vb(x')) = 1/sqrt(x^2 + x'^2 - 2 x x' cos gamma) - 1/(sqrt((x^2 x'^2)/a^2 + a^2 - 2 x x' cos gamma))
$
有边界条件
$
eval(pdv(G_D, n'))_(x'=a) = - eval(pdv(G_D, x'))_(x'=a) = - (x^2-a^2)/(a(x^2+a^2-2 x a cos theta)^(3/2))
$
球面上的电势是指定的球的Laplace方程
$
rho(vb(x')) = 0
$
从而
$
Phi(vb(x)) &= 1/(4pi) integral.cont_S Phi(vb(x')) partialderivative(G_D,n') dd(vb(a)')\
&= 1/(4pi) integral.cont_S Phi(a,theta',phi') (x^2 - a^2)/(a(x^2 + a^2 - 2 x a cos gamma)^(3/2)) dd(a')\
&= 1/(4pi) integral.cont_S Phi(a,theta',phi') (a(x^2 - a^2))/(a(x^2 + a^2 - 2 x a cos gamma)^(3/2)) dd(Omega')\
$
对于Posson方程，该项代入@DbGreen，即可。

对于内部问题，$pdv(G_D,n')$的符号正好相反。

=== Conducting Spheres with Hemispheres at Different Potentials具有不同电位半球的导电球体

#problem[

What is the potential produced by one conducting sphere of radius $a$ made up of two hemispherical shells separated by a small insulating ring? The hemispheres are kept at different potentials of $±V$.

]

#solution[

#figure(
  image("pic/2024-10-08-00-32-00.png", width: 30%),
  numbering: none,
)

$
Phi(vb(x)) &= 1/(4pi) integral.cont_S Phi(a,theta',phi') (a(x^2 - a^2))/(a(x^2 + a^2 - 2 x a cos gamma)^(3/2)) dd(Omega')\
$
注意到
$
dd(Omega') = sin theta' dd(theta',phi')\
cos gamma = cos theta cos theta' + sin theta sin theta' cos(phi - phi')
$
有
$
Phi(vb(x)) &= V/(4pi) integral_0^(2pi) dd(phi') (integral_0^1 dd(cos theta') - integral_(-1)^0 dd(cos theta')) (a(x^2 - a^2))/(a(x^2 + a^2 - 2 x a cos gamma)^(3/2))\
$
做代换
$
theta' -> pi - theta', phi' -> phi' + pi\
integral_(-1)^0 dd(cos theta') -> - integral_1^0 dd(cos theta'), cos gamma -> - cos gamma
$
得到
$
Phi(vb(x)) &= (V a (x^2-a^2))/(4pi) integral_0^(2pi) dd(phi') integral_0^1 dd(cos theta')\ & ((x^2 + a^2 - 2 x a cos gamma)^(-3/2) - (x^2 + a^2 + 2 x a cos gamma)^(-3/2))\
$
考虑$z$轴正半轴上的电势
$
theta = 0 => cos gamma = cos theta'\
Phi(vb(x)) &= V(1-(z^2-a^2)/(z sqrt(z^2+a^2)))
$
当$z=a$时，$Phi = V$, $z>>a$时，$Phi = (3V a^2)/(2z^2)$

*电位的进一步推导*

记
$
alpha = (a x)/(x^2 + a^2)
$
有
$
(1-2alpha cos gamma)^(-3/2) - (1+2alpha cos gamma)^(-3/2) =  6 alpha cos gamma + 35 alpha^3 cos^3 gamma + ...
$
再结合积分
$
integral_0^(2 pi) dd(phi') integral_0^1 dd(cos theta') cos gamma = pi cos theta\
integral_0^(2 pi) dd(phi') integral_0^1 dd(cos theta') cos^3 gamma = pi/4 cos theta (3 - cos^2 theta)
$
从而
$
Phi(vb(x)) &= (V a (x^2-a^2))/(4pi) integral_0^(2pi) dd(phi') integral_0^1 dd(cos theta')\ & ((x^2 + a^2 - 2 x a cos gamma)^(-3/2) - (x^2 + a^2 + 2 x a cos gamma)^(-3/2))\
&approx (3V a^2)/(2x^2) (x^3(x^2-a^2))/(x^2 + a^2)^(5/2) cos theta (1 + 35/24 (a^2 x^2)/(x^2 + a^2)^2 (3 - cos^2 theta) + ...)
$
如果$z>>a$，有
$
(x^3(x^2-a^2))/(x^2 + a^2)^(5/2) approx (1- a^2/x^2)/(1 + a^2/x^2)^(5/2) approx 1 - 7/2 a^2/x^2
$
$
Phi(x, theta, phi) = (3V a^2)/(2 x^2) (cos theta - 7/12 a^2/x^2 (5/2 cos^3 theta - 3/2 cos theta)+ ...)
$
考虑$z$轴正半轴上的电势
$
theta = 0\
Phi = (3V a^2)/(2 z^2)
$
事实上，中的两个角度因子是$P_1(cos θ)$和$P_3(cos θ)$的 Legendre 多项式。

Legendre 多项式是普通 Legendre 微分方程的解：
$
dv(,x) (1-x^2 dd(,x)P_n (x)) + n(n+1) P_n(x) = 0
$
]