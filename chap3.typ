#import"@preview/physica:0.9.2":*
#import "template.typ": *

= 静电学 Introduction to Electrostatics

== Coulomb’s Law

所有的静电学都源于库仑定律的定量表述。

$
vb(F) = k q_1 q_2 (vb(x_1) - vb(x_2))/abs(vb(x_1) - vb(x_2))^3
$

$vb(F)$ 是位于 $vb(x_1)$ 处的电荷 $q_1$ 对位于 $vb(x_2)$ 处的电荷 $q_2$ 的作用力。$k$ 是库仑常数，在SI单位之下，$k = 1/(4 pi epsilon_0)$，其中 $epsilon_0$ 是真空介电常数。

此外，实验还表明，一个小带电体受到周围放置的其他多个小带电体的作用，其产生的总作用力是库仑双体作用力的矢量和。

== 电场 Electric Field

=== 电场 Electric Field

电场可定义为作用在给定点上的单位电荷的力。

测量：必须使用一个限制过程，即在电荷量越来越小的情况下，测量小测试体所受的力与其所带的电荷量之比。

$
vb(F) = q vb(E)
$

在 $vb(x_1)$ 点的点电荷 $q_1$ 在 $vb(x)$ 点的电场：
$
vb(E) = k q_1 (vb(x) - vb(x_1))/abs(vb(x) - vb(x_1))^3
$
在真空中(free space)，$epsilon_0 = 8.85 * 10^-12 "F/m"$。

=== 线性叠加原理 Linear Superposition

$
vb(E)(vb(x)) = 1/(4 pi epsilon_0) sum_i q_i (vb(x) - vb(x_i))/abs(vb(x) - vb(x_i))^3 => vb(E)(vb(x)) = 1/(4 pi epsilon_0) integral_V' rho(vb(x')) (vb(x) - vb(x'))/abs(vb(x) - vb(x'))^3 dd(vb(x'), 3)\
rho(vb(x')) = sum_i q_i delta(vb(x') - vb(x_i))
$

== Gauss定律 Gauss’s Law

=== Gauss’s law for a single point charge

$
vb(E)(vb(x)) &= 1/(4 pi epsilon_0) q (vb(x) - vb(x'))/abs(vb(x) - vb(x'))^3\
vb(E) dot vb(n) dd(a) &= q/(4 pi epsilon_0) (cos theta)/r^2 dd(a) =^(cos theta dd(a) = r^2 dd(Omega)) q/(4 pi epsilon_0) dd(Omega)\
$

- 物体的⽴体角（steradian）：等于物体以角的顶点为中心所覆盖的单位球面的面积。 
- 从球心观察，球面上任何面积等于其半径的平方的区域，对应一个立体弧度（steradian）。

#figure(
  image("pic/2024-09-18-10-42-49.png", width: 20%),
  numbering: none,
)

Gauss定理：
$
integral.cont_S vb(E) dot vb(n) dd(a) = cases(
q/(epsilon_0) &"if"q"lies inside S",
0 "if"q"lies outside S",
)
$

=== Gauss’s law for a discrete set of charges and continuous distribution of charges

$
integral.cont vb(E) dot vb(n) dd(a) = 1/epsilon_0 sum_i q_i = 1/epsilon_0 integral_V rho(vb(x)) dd(vb(x),3)\
$

例如：
- 无限大均匀带电平板：$E = sigma/(2 epsilon_0)$

== Differential Form of Gauss’s Law

$
integral.cont vb(E) dot vb(n) dd(a) = 1/epsilon_0 integral_V rho(vb(x)) dd(vb(x),3)\
$
散度定理：
$
integral_V (div vb(E)) dd(vb(x),3) = 1/epsilon_0 integral_V rho(vb(x)) dd(vb(x),3)\
$
从而
$
div vb(E) = rho/epsilon_0
$
这是*微分形式的Gauss定律*。

== Another equation of electrostatic and the scalar potential

=== Scalar Potential

$
vb(E)(vb(x)) = - grad Phi(vb(x))
$

下面给出证明：
$
vb(E)(vb(x)) = 1/(4 pi epsilon_0) sum_i rho(vb(x')) (vb(x) - vb(x'))/abs(vb(x) - vb(x'))^3\
$
而
$
grad (1/abs(vb(x) - vb(x'))) = - (vb(x) - vb(x'))/abs(vb(x) - vb(x'))^3\
$
有
$
vb(E)(vb(x)) = 1/(4 pi epsilon_0) integral rho(vb(x'))(- grad (1/abs(vb(x) - vb(x')))) dd(vb(x'),3) = - 1/(4 pi epsilon_0) grad integral rho(vb(x'))/abs(vb(x) - vb(x')) dd(vb(x'), 3)\
$
所以
$
Phi(vb(x)) = 1/(4 pi epsilon_0) integral rho(vb(x'))/abs(vb(x) - vb(x')) dd(vb(x'), 3)\
$

在电场$vb(E)(vb(x))$作用下，测试电荷$q$从一点$A$到另一点$B$所做的功：$W$
$
W = - integral_A^B q vb(E) dot vb(n) dd(a) = q (Phi(vb(B)) - Phi(vb(A)))\
integral.cont vb(E) dot dd(vb(l)) = 0\
$
由旋度定理：
$
curl vb(E) = 0
$
也就是说：
- 电场是保守场
- 电场的旋度为零

得到了静电场的两个方程
$
div vb(E) = rho/epsilon_0\
curl vb(E) = 0
$

== Poisson and Laplace Equations

- Poisson Equation
$
laplacian Phi = - rho/epsilon_0
$
- Laplace Equation
$
laplacian Phi = 0, rho=0
$

_注：_
- 利用$laplacian (1/abs(vb(x) - vb(x'))) = - 4 pi delta(vb(x) - vb(x'))$，可以从$Phi(vb(x)) = 1/(4 pi epsilon_0) integral rho(vb(x'))/abs(vb(x) - vb(x')) dd(vb(x'), 3)$得到Poisson方程。

仅从两个实验观察结果，就能推导出所有公式： 
- 库仑定律
- 叠加原理

#figure(
  image("pic/2024-09-18-11-25-18.png", width: 50%),
  numbering: none,
)