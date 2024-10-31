#import"@preview/physica:0.9.2":*
#import "template.typ": *

= 静电学中的边值问题：圆边界 Boundary-Value Problems in Electrostatics

== Laplace Equation in Spherical Coordinates 球坐标系下的Laplace方程

=== Laplace Equation in Spherical Coordinates

$
laplacian Phi = 1/r pdv(,r,2)(r Phi) + 1/(r^2 sin theta) pdv(,theta)(sin theta pdv(Phi,theta)) + 1/(r^2 sin^2 theta) pdv(Phi,phi,2)= 0
$
分离变量
$
Phi(R,theta,phi) = U(r)/r P(theta) Q(phi)
$
代入方程得到
$
P Q dv(U,r,2) + (U Q)/(r^2 sin theta) dv(,theta)(sin theta dv(P,theta)) + (U P)/(r^2 sin^2 theta) dv(Q,phi,2) = 0
$
即
$
r^2 sin^2 theta (1/U dv(U,r,2) + 1/(P r^2 sin theta) dv(,theta)(sin theta dv(P,theta))) + 1/(Q) dv(Q,phi,2) = 0
$
有
#text(fill:red)[
$
1/(Q) dv(Q,phi,2) = -m^2 => Q = e^(plus.minus i m phi),m in ZZ
$
]
以及
$
(P r^2)/U dv(U,r,2) + 1/(sin theta) dv(,theta)(sin theta dv(P,theta)) = (m^2 P)/(sin^2 theta)
$
分离，得到
#text(fill:red)[
$
1/(sin theta) dv(,theta)(sin theta dv(P,theta)) + (l(l+1) - (m^2)/(sin^2 theta))P = 0\
dv(U,r,2) - (l(l+1) U)/(r^2) = 0 => U = A r^(l+1) + B r^(-l)
$
]

== Legendre Equation and Legendre Polynomials Legendre方程和Legendre多项式

=== Generalized Legendre Equation 连带 Legendre 方程

$
1/(sin theta) dv(,theta)(sin theta dv(P,theta)) + (l(l+1) - (m^2)/(sin^2 theta))P = 0
$
令
$
x = cos theta, -1<= x <= 1
$
则
$
dv(,x)((1-x^2) dv(P,x)) + (l(l+1) - m^2/(1-x^2))P = 0
$
是Generalized Legendre equation 连带 Legendre 方程，其解为连带 Legendre 函数。

=== Ordinary Legendre Equation 普通 Legendre 方程

连带 Legendre 方程中 $m=0$即为普通 Legendre 方程，其解为普通 Legendre 函数。
$
dv(,x)((1-x^2) dv(P,x)) + l(l+1)P = 0
$

=== Legendre Polynomials

$
P(x) = x^alpha sum_(j = 0)^oo a_j x^j
$
代入化简得到
$
sum_(j = 0)^oo (alpha + j)(alpha + j - 1) a_j x^(alpha + j - 2) - sum_(j = 0)^oo ((alpha+j)(alpha+j-1) - l(l+1)) a_j x^(alpha+j) = 0
$
可以得到
$
a_(j+2) = ((alpha + j)(alpha + j + 1) - l(l+1))/((alpha + j + 1)(alpha + j + 2)) a_j
$

#figure(
  image("pic/2024-10-18-11-38-51.png", width: 80%),
  numbering: none,
)

=== Termination of the Series 级数截断

- 当$x^2<1$时，无论$l$的值是多少，级数都会收敛
- 数列在$x=±1$处发散，除非截断

考虑到$α$和$j$为正整数或零，如果$l$为零或正整数，递推关系将终止：
$
a_(j+2) = ((alpha + j)(alpha + j + 1) - l(l+1))/((alpha + j + 1)(alpha + j + 2)) a_j
$
对$a_0!=0,a_1=0$有
$
a_(j+2) = cases(
  (j(j+1) - l(l+1))/((j+1)(j+2)) a_j & alpha=0 & P(x) = a_0 + a_2 x^2 + a_4 x^4 + ...,
  ((j+1)(j+2) - l(l+1))/((j+2)(j+3)) a_j & alpha=1 & P(x) = a_0 x + a_2 x^3 + a_4 x^5 + ...,
)
$
$alpha=0$使得$l$在奇数处截断，$alpha=1$使得$l$在偶数处截断。

=== First few Legendre polynomials

$
P_0 (x) &= 1\
P_1 (x) &= x\
P_2 (x) &= (3x^2 - 1)/2\
P_3 (x) &= (5x^3 - 3x)/2\
P_4 (x) &= (35x^4 - 30x^2 + 3)/8\
P_5 (x) &= (63x^5 - 70x^3 + 15x)/8\
$
有性质
$
P_l (-x) = (-1)^l P_l (x)
$

*Rodrigues' formula*
#text(fill:red)[
$
P_l (x) = 1/(2^l l!) dv(,x,l) (x^2 - 1)^l
$
]

=== Complete Orthogonal

Legendre 多项式是 $[-1,1]$上的完备正交函数系，即
#text(fill:red)[
$
integral_(-1)^1 P_l (x) P_k (x) dd(x) = 2/(2l + 1) delta_(l k)
$
]

#figure(
  image("pic/2024-10-18-11-55-04.png", width: 80%),
  numbering: none,
)

#figure(
  image("pic/2024-10-18-11-57-07.png", width: 80%),
  numbering: none,
)

#figure(
  image("pic/2024-10-18-11-57-23.png", width: 80%),
  numbering: none,
)

Any function $f(x)$ on the interval $[-1,1]$ can be expanded in terms of the Legendre polynomials.

=== Recurrence relations(递归关系) among Legendre polynomials

$
dv(P_(l+1),x)- dv(P_(l-1),x) = (2l+1) P_l
$

#figure(
  image("pic/2024-10-18-11-59-10.png", width: 80%),
  numbering: none,
)

$
dv(P_(l+1),x) - x dv(P_l,x) = (l+1) P_l
$

#problem[

Use the recurrence formulas to evaluate the integral:
$
I = integral_(-1)^1 x P_l (x) P_l' (x) dd(x)
$

]

#solution[
  #figure(
    image("pic/2024-10-18-12-44-02.png", width: 80%),
    numbering: none,
  )
]

== Boundary-Value Problems with Azimuthal Symmetry 具有方位对称性的边值问题

=== Laplace Problem with Azimuthal Symmetry

#text(fill:red)[
$
Phi(r, theta) = sum_(l=0)^oo (A_l r^l + B_l r^(-l-1)) P_l (cos theta)
$
]

#problem[

Consider the potential inside one sphere of radius $a$,with the surface potential of $V(θ)$.
]

#figure(
  image("pic/2024-10-18-14-29-38.png", width: 40%),
  numbering: none,
)

#solution[

由于$0$在求解范围内，可以将$B_l$项去掉，得到
$
Phi(r, theta) = sum_(l=0)^oo A_l r^l P_l (cos theta)
$

#figure(
  image("pic/2024-10-18-14-38-48.png", width: 80%),
  numbering: none,
)

和@shpere 的结果相符

#figure(
  image("pic/2024-10-18-14-43-30.png", width: 80%),
  numbering: none,
)



]

#problem[

Potential at $x$ due to a unit point charge at $x'$.
]

#figure(
  image("pic/2024-10-18-14-47-07.png", width: 30%),
  numbering: none,
)

#solution[

旋转坐标系，使$x'$位于$z$轴上。

$
1/abs(vb(x)-vb(x')) = sum_(l=0)^oo (A_l r^l + B_l r^(-l-1)) P_l (cos theta)
$
如果$x$也在$z$轴上，有
$
1/abs(vb(x)-vb(x')) = 1/r_> sum_(l=0)^oo ((r_<)/(r_>))^l
$
所以对于任意的$x$，有
#text(fill:red)[
$
1/abs(vb(x)-vb(x')) = 1/r_> sum_(l=0)^oo ((r_<)/(r_>))^l P_l (cos theta)
$
]
]

#problem[

Potential at $x$ due to a total charge $q$ uniformly distributed around a circular ring of radius $a$.
]

#solution[

#figure(
  image("pic/2024-10-18-15-41-35.png", width: 80%),
  numbering: none,
)
]

== Behavior of Fields in a Conical Hole or Near a Sharp Point 锥形孔或尖点附近的场行为

=== Legendre Function of the First Kind and Order $ν$

General solution for boundary-value problems with azimuthal symmetry ($m=0$) and $θ$ is unlimited:
$
Phi(r, theta) = sum_(l=0)^oo (A_l r^l + B_l r^(-l-1)) P_l (cos theta)
$

本节将讨论具有方位对称性的球面坐标中的同一问题，但只涉及有限的 $θ$ 范围。

对于 Legendre 函数
$
dv(,x)((1-x^2) dv(P,x)) + l(l+1)P = 0
$
做代换
$
xi = (1-x)/2, nu = l
$
得到
$
dv(,xi)(xi(1-xi) dv(P,xi)) + nu(nu+1) P = 0
$
对于
$
P(xi) = xi^alpha sum_(j = 0)^oo a_j xi^j
$
有
$
a_(j+1)/a_j = ((j-nu)(j+nu+1))/((j+1)^2)
$
得到$v$阶第一类 Legendre 函数
$
P_nu (xi) = 1 + ((-nu)(nu + 1))/(1!1!) xi + ((-nu)(-nu+1)(nu+1)(nu+2))/(2!2!) xi^2 + ...
$
其中$nu$不必是整数，当整数时，$P_nu$是 Legendre 多项式，产生截断。

=== Fields in a Conical Hole or Near a Sharp Point

#problem[

Solve the field inside the conical hole which has a limited range of $θ (0≤θ≤ β)$. The potential on the conducting surface is at zero.
]


#solution[

#figure(
  image("pic/2024-10-18-16-00-37.png", width: 80%),
  numbering: none,
)

#figure(
  image("pic/2024-10-18-16-01-05.png", width: 80%),
  numbering: none,
)
]

== Associated Legendre Functions and the Spherical Harmonics 连带 Legendre 函数和球谐函数

本节讨论方位角不对称（$m≠0$）但$θ$和$ϕ$不受限制的球面坐标问题。

=== Associated Legendre Function

连带 Legendre 方程
$
dv(,x)((1-x^2) dv(P,x)) + (l(l+1) - m^2/(1-x^2))P = 0\
dv(U,r,2) - (l(l+1) U)/(r^2) = 0\
1/Q dv(Q,phi,2) = -m^2
$
方程在$-1≤x≤1$上有有限解：$l$必须为零或一个正整数
$
P_l^m (x) = (-1)^m (1-x^2)^(m/2) dv(,x,m) P_l (x) (m>=0)
$
$
P_l^m (x) = (-1)^m/(2^l l!) (1-x^2)^(m/2) dv(,x,l+m) (x^2-1)^l (m = -l, -l+1, ..., l)
$
当$m=0$时，$P_l^0 (x) = P_l (x)$

=== Spherical Harmonics 球谐函数

Orthogonal set:
- $P_l^m (cos theta)$是正交完备的
  $
  integral_(-1)^1 P_l'^m (x) P_l^m (x) dd(x) = 2/(2l + 1) (l+m)!/(l-m)! delta_(l' l)
  $
- 以及$phi$的维度
  $
  integral_0^(2pi) e^(i(m-m')phi) dd(phi) = 2pi delta_(m m')
  $
在单位球面上以$l,m$两种指数构成一个完整的正交集合：
#text(fill:red)[
$
Y_(l m) (theta, phi) = sqrt((2l+1)/(4pi) (l-m)!/(l+m)!) P_l^m (cos theta) e^(i m phi)
$
]
有正交归一关系
$
integral_0^(2pi) integral_(-1)^1 Y^*_(l' m') (theta, phi) Y_(l m) (theta, phi) sin theta dd(theta) dd(phi) = delta_(l' l) delta_(m' m)
$
以及完备性条件
$
sum_(l=0)^oo sum_(m=-l)^l Y^*_(l m) (theta', phi') Y_(l m) (theta, phi) = delta(cos theta- cos theta') delta(phi-phi')
$

#figure(
  image("pic/2024-10-18-16-28-31.png", width: 80%),
  numbering: none,
)

任意函数$g(theta, phi)$可以由球谐函数展开：
$
g(theta, phi) = sum_(l=0)^oo sum_(m=-l)^l A_(l m) Y_(l m) (theta, phi)
$
其中
$
A_(l m) = integral_0^(2pi) integral_(-1)^1 g(theta, phi) Y^*_(l m) (theta, phi) sin theta dd(theta) dd(phi)
$

=== General Solution in Spherical Coordinates

$
Phi(r, theta, phi)=U(r)/r P(theta) Q(phi)\
Phi(r, theta, phi)=sum_(l=0)^oo sum_(m=-l)^l (A_(l m) r^l + B_(l m) r^(-l-1)) Y_(l m) (theta, phi)
$

== Addition Theorem for Spherical Harmonics 球谐函数的加法定理

=== Addition Theorem for Spherical Harmonics

$
P_l (cos gamma) = (4pi)/(2l+1) sum_(m=-l)^l  Y^*_(l m) (theta', phi')Y_(l m) (theta, phi)
$

#figure(
  image("pic/2024-10-18-16-34-40.png", width: 40%),
  numbering: none,
)

$
1/abs(vb(x) - vb(x')) &= sum_(l=0)^oo r_<^l/r_>^(l+1) P_l (cos gamma)\
&= 4pi sum_(l=0)^oo sum_(m=-l)^l 1/(2l+1) r_<^l/r_>^(l+1)  Y^*_(l m) (theta', phi')Y_(l m) (theta, phi)
$

#figure(
  image("pic/2024-10-18-16-41-56.png", width: 100%),
  numbering: none,
)

== Laplace Equation in Cylindrical Coordinates and Bessel Function 柱坐标系下的Laplace方程和Bessel函数

=== Laplace Equation in Cylindrical Coordinates

$
laplacian Phi = pdv(Phi,r,2) + 1/rho pdv(,rho)(rho pdv(Phi,rho)) + 1/rho^2 pdv(Phi,phi,2) + pdv(Phi,z,2) = 0
$
分离变量
$
Phi(rho, phi, z) = R(rho) P(phi) Z(z)
$
代入方程得到
$
(rho^2/R dv(R,rho,2) + rho/R dv(P,rho)) + 1/Q dv(Q,phi,2) + rho^2/Z dv(Z,z,2) = 0
$
则有
$
dv(Q,phi,2) + nu^2 Q = 0 => Q = e^(plus.minus i nu phi),nu in ZZ
$
$
dv(Z,z,2) - k^2 Z = 0 => Z = e^(plus.minus k z),k in RR
$
$
dv(R,rho,2) + 1/rho dv(R,rho) + (k^2 - nu^2/rho^2) R = 0
$
第三个式子中，令
$
x = k rho
$
则有 $nu$ 阶 Bessel 方程
$
dv(R,x,2) + 1/x dv(R,x) + (1 - nu^2/x^2)R = 0
$

=== Bessel Function

对 $nu$ 阶 Bessel 方程
$
dv(R,x,2) + 1/x dv(R,x) + (1 - nu^2/x^2)R = 0
$
取
$
R(x) = x^alpha sum_(j = 0)^oo a_j x^j
$
代入比较有
$
alpha = plus.minus nu\
a_1 = 0\
a_(j-2) = a_j (nu^2 - (j+alpha)^2)
$
从而
$
a_(2j) = (-1)^j Gamma(alpha+1)/(2^(2j)j! Gamma(j+alpha+1)) a_0
$
选择
$
a_0 = 1/(2^alpha Gamma(alpha+1))
$
得到 Bessel 函数
$
J_nu (x) = (x/2)^nu sum_(j = 0)^oo (-1)^j  / (j! Gamma(j+nu+1))(x/2)^(2j)\
J_(-nu) (x) = (x/2)^(-nu) sum_(j = 0)^oo (-1)^j  / (j! Gamma(j-nu+1))(x/2)^(2j)
$
如果$𝜈$不是整数，这两个解$J_(±𝜈) (x)$就构成了 Bessel 方程的线性无关解。

当$ν$为整数时$J_ν$和$J_(-ν)$是线性相关的：
$
J_nu = (-1)^nu J_(-nu)
$

由于$J_ν$和$J_(-ν)$是线性相关的，我们可以由此构造出第二个线性无关解：
- Neumann 函数（第二类 Bessel 函数）
  $
  N_nu (x) = (J_nu (x) cos nu pi - J_(-nu) (x))/(sin nu pi)
  $
  这样$J_ν$和$N_ν$就是线性无关的解。
- Hankel 函数（第三类 Bessel 函数）
  $
  H_nu^((1)) (x) = J_nu (x) + i N_nu (x)\
  H_nu^((2)) (x) = J_nu (x) - i N_nu (x)
  $
  $H_nu^((1))$和$H_nu^((2))$是线性无关的解。

Bessel 函数的递推关系：
$
Omega_(nu-1) (x) + Omega_(nu+1) (x) = (2nu)/x Omega_nu (x)\
Omega_(nu-1) (x) - Omega_(nu-1) (x) = 2 dv(Omega_nu (x),x)
$

#figure(
  image("pic/2024-10-18-23-45-18.png", width: 100%),
  numbering: none,
)

=== Modified Bessel functions 虚宗量 Bessel 函数

对方程
$
dv(R,rho,2) + 1/rho dv(R,rho) + (k^2 - nu^2/rho^2) R = 0\
dv(Z,z,2) - k^2 Z = 0
$
将$k^2->-k^2$得到
$
dv(R,rho,2) + 1/rho dv(R,rho) - (k^2 + nu^2/rho^2) R = 0\
dv(Z,z,2) + k^2 Z = 0
$
代换$x = k rho$得到
$
dv(R,x,2) + 1/x dv(R,x) - (1 + nu^2/x^2) R = 0
$
这个方程的解是虚宗量 Bessel 函数，解为
$
I_nu (x) = i^(-nu) J_nu (i x)\
K_nu (x) = pi/(2) i^(nu+1) H_nu^((1)) (i x)
$
#figure(
  image("pic/2024-10-18-23-57-16.png", width: 30%),
  numbering: none,
)

- Bessel functions - Cylindrical coordinate（柱坐标系）
- Legendre functions - Spherical coordinate（球坐标系）
- Trigonometric functions - Cartesian coordinate（直角坐标系）

=== 正交完备性

Bessel函数是$rho in [0,a]$上的正交完备函数系：
$
J_nu ((x_(nu n)rho)/a)
$
其中$x_(nu n)$是$J_nu$的第$n$个零点。

有权重函数$rho$，正交性为
$
integral_0^a rho J_nu ((x_(nu n')rho)/a) J_nu ((x_(nu n)rho)/a) dd(rho) = a^2/2 (J_(nu+1) (x_(nu n)))^2 delta_(n n')
$

#figure(
  image("pic/2024-10-19-00-07-28.png", width: 80%),
  numbering: none,
)

#figure(
  image("pic/2024-10-19-00-09-24.png", width: 80%),
  numbering: none,
)

区间$0≤ρ≤a$上的任意函数$f(ρ)$可以展开为Bessel函数的级数：
$
f(ρ) = sum_(n=0)^oo A_(nu n) J_nu ((x_(nu n)ρ)/a)
$

== Boundary-Value Problems in Cylindrical Coordinates 柱坐标系下的边值问题

#problem[

What is the potential inside the cylinder which has a radius of a and a height of $L$? The potential on the side and the bottom of the cylinder is zero, while the top has a potential of $Φ=V(ρ,ϕ)$.

]

#solution[

#figure(
  image("pic/2024-10-19-00-35-09.png", width: 80%),
  numbering: none,
)
#figure(
  image("pic/2024-10-19-00-41-24.png", width: 80%),
  numbering: none,
)

]

== Expansion of Green Functions in Spherical Coordinates 球坐标系下的Green函数展开

问题：
1. 如何给出以$r=a$和$r=b$为边界的球壳的格林函数？
2. 为什么我们使用格林函数作为与坐标相适应的函数的一系列乘积？ 

  1. 处理涉及电荷分布和边界值的问题；
  2. 满足在某些可分离坐标系的表面上规定的适当边界条件；
  3. 处理用对称电荷法难以获得的问题。

=== Expansion of Green Function in Spherical Coordinates

- No boundary

$
G(vb(x),vb(x')) = 1/abs(vb(x) - vb(x')) = 4 pi sum_(l=0)^oo sum_(m=-l)^l 1/(2l+1) r_<^l/r_>^(l+1) Y^*_(l m) (theta', phi') Y_(l m) (theta, phi)
$

- 球形边界$r=a$的外部

$
G(vb(x),vb(x')) = 1/abs(vb(x) - vb(x')) - a/(x'abs(vb(x) - a^2/x'^2 vb(x')))
$
而其中
$
- a/(x'abs(vb(x) - a^2/x'^2 vb(x'))) &= - a/r' 1/abs(vb(x) - a^2/x'^2 vb(x'))\
&= - a/r' 4 pi sum_(l=0)^oo sum_(m=-l)^l 1/(2l+1) 1/r^(l+1) (a^2/r')^l Y_(l m)^* (theta', phi') Y_(l m) (theta, phi)
$
这是把上式中
$
r_> = r, r_< = a^2/r'
$
代入得到的。

从而最终的Green函数为
$
G(vb(x),vb(x')) = 4 pi sum_(l=0)^oo sum_(m=-l)^l 1/(2l+1) (r_<^l/r_>^(l+1) - 1/a (a^2/(r r'))^(l+1)) Y_(l m)^* (theta', phi') Y_(l m) (theta, phi)
$
其中
$
r_<^l/r_>^(l+1) - 1/a (a^2/(r r'))^(l+1) = cases(
  1/r'^(l+1) (r^l - a^(2l+1)/r^(l+1)) & r > a\
  1/r^(l+1) (r'^l - a^(2l+1)/r'^(l+1)) & r < a
)
$
1. 当$r$或$r'$等于$a$时，径向因子消失
2. $r->oo$或$r'->oo$时，径向因子趋于零
3. $r$和$r'$对称

=== General expansion in separable coordinates

$
G(vb(x),vb(x')) = 4 pi sum_(l=0)^oo sum_(m=-l)^l 1/(2l+1) (r_<^l/r_>^(l+1) - 1/a (a^2/(r r'))^(l+1)) Y_(l m)^* (theta', phi') Y_(l m) (theta, phi)
$
$
G(vb(x),vb(x')) = sum_(l=0)^oo sum_(m=-l)^l A_(l m) (r | r', theta', phi') Y_(l m) (theta, phi)
$
利用
$
laplacian_x G(vb(x),vb(x')) = -4 pi delta(vb(x)-vb(x'))\
delta(vb(x)-vb(x')) = 1/r^2 delta(r-r') delta(phi-phi') delta(cos theta - cos theta')= 1/r^2 delta(r-r')sum_(l=0)^oo sum_(m=-l)^l Y_(l m) (theta, phi) Y_(l m)^* (theta', phi')
$
令
$
A_(l m) (r | r', theta', phi') = g_l (r, r') Y^*_(l m) (theta', phi')
$
$
1/r dv(,r,2) (r g_l (r,r')) - (l(l+1))/r^2 g_l (r,r') = -4 pi delta(r-r')
$
$g_l$是Radial Green function

#figure(
  image("pic/2024-10-19-01-25-35.png", width: 80%),
  numbering: none,
)

#figure(
  image("pic/2024-10-19-01-26-12.png", width: 80%),
  numbering: none,
)

=== Expansion with boundary surfaces at $r=a$ and $r=b$

$
g_l (r,r') = cases(
  A r^l + B r^(-l-1) & r < r'\
  A' r^l + B' r^(-l-1) & r > r'
)
$
有边界条件
$
g_l (r=a, r')=0, g_l (r=b, r')=0
$
得到
$
g_l (r,r') = cases(
  A(r^l - (a^(2l+1))/r^(l+1)) & r < r'\
  B'(1/r^(l+1) - r^l/b^(2l+1)) & r > r'
)
$
由$r$和$r'$的对称性，有
$
g_l (r,r') &= C (r_<^l - a^(2l+1)/r_<^(l+1))(1/r_>^(l+1) - r_>^l/b^(2l+1))\
&= cases(
  C (r^l - a^(2l+1)/r^(l+1))(1/r'^(l+1) - r'^l/b^(2l+1)) & r < r'\
  C (r'^l - a^(2l+1)/r'^(l+1))(1/r^(l+1) - r^l/b^(2l+1)) & r > r'
)
$
对$g_l$的式子multiply both sides by $r$, and integrate over $r'-𝜖$ and $r'+𝜖$，可以得到$C$
$
C = (4pi)/((2l+1)(1-(a/b)^(2l+1)))
$
#figure(
  image("pic/2024-10-19-01-43-40.png", width: 80%),
  numbering: none,
)
最终得到Green函数
#text(fill: red)[
$
G(vb(x),vb(x')) = 4 pi sum_(l=0)^oo sum_(m=-l)^l ( Y_(l m)^* (theta', phi') Y_(l m) (theta, phi))/((2l+1)(1-(a/b)^(2l+1))) (r_<^l - a^(2l+1)/r_<^(l+1))(1/r_>^(l+1) - r_>^l/b^(2l+1))
$
  ]
- $a->0,b->oo$得到自由空间的Green函数
  $
  G(vb(x),vb(x')) = 1/abs(vb(x) - vb(x')) = 4 pi sum_(l=0)^oo sum_(m=-l)^l 1/(2l+1) r_<^l/r_>^(l+1) Y^*_(l m) (theta', phi') Y_(l m) (theta, phi)
  $
- $b->oo$得到球壳的Green函数

  $
  G(vb(x),vb(x')) = 4 pi sum_(l=0)^oo sum_(m=-l)^l 1/(2l+1) (r_<^l/r_>^(l+1) - 1/a (a^2/(r r'))^(l+1)) Y_(l m)^* (theta', phi') Y_(l m) (theta, phi)
  $

- 对于内部问题$a->0$

== Solution of Potential Problems with the Spherical Green Function Expansion 用球形Green函数展开解决电势问题

=== General Solution to the Poisson Equation with Dirichlet Boundary Conditions

根据 @DbGreen 
$
Phi(vb(x)) = 1/(4 pi epsilon_0) integral_V G_D(vb(x),vb(x')) rho(vb(x')) dd(vb(x'), 3) - 1/(4 pi) integral.cont_S Phi(vb(x')) partialderivative(G_D,n') dd(vb(a)')
$
再结合刚推导出来的Green函数
$
G(vb(x),vb(x')) = 4 pi sum_(l=0)^oo sum_(m=-l)^l ( Y_(l m)^* (theta', phi') Y_(l m) (theta, phi))/((2l+1)(1-(a/b)^(2l+1))) (r_<^l - a^(2l+1)/r_<^(l+1))(1/r_>^(l+1) - r_>^l/b^(2l+1))
$

#problem[

What is the potential inside a sphere of radius $b$? On the surface of $r=b, Φ=V(θ,ϕ)$. There is no charge inside the sphere. 
]

#figure(
  image("pic/2024-10-19-14-50-17.png", width: 30%),
  numbering: none,
)


#solution[

#figure(
  image("pic/2024-10-19-14-40-58.png", width: 80%),
  numbering: none,
)
#figure(
  image("pic/2024-10-19-14-42-48.png", width: 80%),
  numbering: none,
)
得到电势
$
Phi(vb(x)) = sum_(l=0)^oo sum_(m=-l)^l (integral V(theta', phi') Y_(l m)^*(theta', phi')dd(Omega')) (r/b)^l Y_(l m) (theta, phi)
$

事实上在前面我们说$Phi$可以被展开为球谐函数
$
Phi(r, theta, phi) = sum_(l=0)^oo sum_(m=-l)^l (A_(l m) r^l + B_(l m) r^(-l-1)) Y_(l m) (theta, phi)
$
另外，我们也有镜像电荷法的 Green 函数推出了
$
Phi(vb(x)) = 1/(4 pi epsilon_0) integral Phi(a, phi', theta') (a(x^2 - a^2))/(x^2 + a^2 - 2a x cos gamma)^(3/2) dd(Omega')
$
二者形式符合。
]

#problem[

Solve the potential inside a hollow grounded *sphere* of radius $b$, with a concentric *ring* of charge of radius $a$ and total charge $Q$.

]

#figure(
  image("pic/2024-10-19-14-55-14.png", width: 30%),
  numbering: none,
)

#solution[

#figure(
  image("pic/2024-10-19-14-56-08.png", width: 80%),
  numbering: none,
)

#figure(
  image("pic/2024-10-19-14-57-17.png", width: 80%),
  numbering: none,
)

]

#problem[

Solve the potential inside a hollow grounded sphere of radius $b$, with a uniform line charge of total charge $Q$ located on the $z$ axis between the north and south poles of the sphere.
]

#figure(
  image("pic/2024-10-19-15-10-36.png", width: 40%),
  numbering: none,
)

#solution[

#figure(
  image("pic/2024-10-19-15-13-05.png", width: 80%),
  numbering: none,
)

#figure(
  image("pic/2024-10-19-15-14-27.png", width: 80%),
  numbering: none,
)

]

== Expansion of Green Functions in Cylindrical Coordinates 柱坐标系下的Green函数展开

=== Expansion of Green Function in Cylindrical Coordinates

#figure(
  image("pic/2024-10-19-15-18-53.png", width: 80%),
  numbering: none,
)
#figure(
  image("pic/2024-10-19-15-20-34.png", width: 80%),
  numbering: none,
)

得到结果
$
1/abs(vb(x) - vb(x')) = 1/pi sum_(m=-oo)^oo integral_(-oo)^oo dd(k) e^(i m (phi -phi'))e^(i k(z-z'))I_m (k rho_<) K_m (k rho_>)
$
其中$I_m$和$K_m$是修正 Bessel 函数（虚宗量 Bessel 函数）。

== Eigenfunction Expansions for Green Functions Green函数的特征函数展开

=== Eigenfunctions and Eigenvalues

Elliptic differential equation 椭圆微分方程
$
laplacian Psi(vb(x)) + (f(vb(x))+lambda)Psi(vb(x)) = 0
$
如果要求$Ψ(x)$满足所关心的体积$V$的表面$S$上的同质边界条件，那么椭圆微分方程就不会有良好的（例如有限连续的）解，除了$λ$的某些值。
$
laplacian Psi_n (vb(x)) + (f(vb(x))+lambda_n)Psi_n (vb(x)) = 0
$
特征函数是正交的：
$
integral_V Psi_n^* (vb(x)) Psi_m (vb(x)) dd(vb(x)) = delta_(n m)
$
特征函数构成一个正交完备集。假设 Green 函数的边界条件与特征函数相同，并满足方程：
$
laplacian_x G(vb(x),vb(x')) + (f(vb(x))+lambda)G(vb(x),vb(x')) = -4 pi delta(vb(x)-vb(x'))
$

=== Eigenfunction Expansions for Green Functions

$
G(vb(x),vb(x')) = sum_n a_n (vb(x')) Psi_n (vb(x))
$
结合
$
laplacian Psi_n (vb(x)) + (f(vb(x))+lambda_n)Psi_n (vb(x)) = 0\
laplacian_x G(vb(x),vb(x')) + (f(vb(x))+lambda)G(vb(x),vb(x')) = -4 pi delta(vb(x)-vb(x'))
$
得到
$
sum_n a_n (vb(x')) (lambda-lambda_n) Psi_n (vb(x)) = -4 pi delta(vb(x)-vb(x'))
$
两边乘以$Psi_m^* (vb(x))$并积分，得到
$
a_m (vb(x')) = -4 pi (Psi_m^* (vb(x')))/(lambda_m-lambda)
$
从而 Green 函数的展开为
$
G(vb(x),vb(x')) = -4 pi sum_n (Psi_n^* (vb(x')) Psi_n (vb(x)))/(lambda_n-lambda)
$

#problem[

3D Fourier Integral representation of $1/abs(x-x')$.
]

#solution[
$
laplacian Psi_n (vb(x)) + (f(vb(x))+lambda_n)Psi_n (vb(x)) = 0
$
中$f=0,lambda_n=k^2$是连续的特征值
$
(laplacian + k^2) Psi_vb(k) (vb(x)) = 0
$
$
Psi_vb(k) (vb(x)) = 1/(2pi)^(3/2)  e^(i vb(k) dot vb(x))
$
根据Green函数的展开
$
1/abs(vb(x)-vb(x')) = 1/(2pi^2) integral e^(i vb(k) dot (vb(x)-vb(x'))) dd(vb(k))
$
]


#problem[

Find the Green function for a Dirichlet problem inside a rectangular box defined by the six planes, $x=0, y=0, z=0, x=a, y=b, z=c$.

]

#solution[

#figure(
  image("pic/2024-10-19-15-39-17.png", width: 80%),
  numbering: none,
)
]