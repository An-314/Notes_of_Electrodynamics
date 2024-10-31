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

#text(fill: blue)[
$
vb(E)(vb(x)) = 1/(4 pi epsilon_0) sum_i q_i (vb(x) - vb(x_i))/abs(vb(x) - vb(x_i))^3 => vb(E)(vb(x)) = 1/(4 pi epsilon_0) integral_V' rho(vb(x')) (vb(x) - vb(x'))/abs(vb(x) - vb(x'))^3 dd(vb(x'), 3)
$]
$
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

#text(fill: blue)[
$
integral.cont vb(E) dot vb(n) dd(a) = 1/epsilon_0 sum_i q_i = 1/epsilon_0 integral_V rho(vb(x)) dd(vb(x),3)\
$
]
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
#text(fill: blue)[
$
div vb(E) = rho/epsilon_0
$
]
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
#text(fill: blue)[$
Phi(vb(x)) = 1/(4 pi epsilon_0) integral rho(vb(x'))/abs(vb(x) - vb(x')) dd(vb(x'), 3)\
$]


在电场$vb(E)(vb(x))$作用下，测试电荷$q$从一点$A$到另一点$B$所做的功：$W$
$
W = - integral_A^B q vb(E) dot vb(n) dd(a) = q (Phi(vb(B)) - Phi(vb(A)))\
integral.cont vb(E) dot dd(vb(l)) = 0\
$
由旋度定理：
#text(fill: blue)[
$
curl vb(E) = 0
$
]
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

== 边界条件 Surface Distributions of Charges and Dipoles and Discontinuities in the Electric Field and Potential

=== 特定表面电荷分布产生的电场或电势

表面$S$的单位法线从表面的边 1 指向边 2，其表面电荷密度为$σ(x)$。

#figure(
  image("pic/2024-09-20-15-37-44.png", width: 20%),
  numbering: none,
)

由Gauss定律：
$
integral.cont_S vb(D) dot vb(a) = integral_V rho dd(tau)
$
则有
$
integral.cont_S vb(D) dot vb(a) = integral_S vb(D) dot vu(n) dd(a) = (vb(D_2) - vb(D_1)) dot vu(n) Delta a\
integral_V rho dd(tau) = sigma Delta a
$
从而
$
(vb(D_2) - vb(D_1)) dot vu(n) = sigma\
(vb(E_2) - vb(E_1)) dot vu(n) = sigma/epsilon_0\
- partialderivative(Phi_2,n) + partialderivative(Phi_1,n) = sigma/epsilon_0
$

*电荷表面层上电场法向分量的不连续（表面两侧的介质相同）。*

#figure(
  image("pic/2024-09-20-15-45-21.png", width: 40%),
  numbering: none,
)

再根据Stokes定理：
$
integral_S (curl vb(E))dot vb(a) = integral.cont_C vb(E) dot vb(l)
$
则有
$
integral.cont_C vb(E) dot vb(l) = (vu(t) times (vb(E_2) - vb(E_1))) dot vu(n) Delta l = (vu(n) times (vb(E_2) - vb(E_1))) dot vu(t) Delta l\
integral_S (curl vb(E))dot vb(a) = (curl vb(E)) Delta h dot vu(t) Delta l = 0
$
从而
$
vu(n) times (vb(E_2) - vb(E_1)) = 0\
$

- 电场的法向分量：$σ/ε$不连续
- 电场的切向分量：连续

=== 表面的势能跃变 Potential jump in crossing the surface

空间任何一点的电位（不仅仅是表面）：
#text(fill: blue)[$
Phi(vb(x)) = 1/(4 pi epsilon_0) integral sigma(vb(x'))/abs(vb(x) - vb(x')) dd(a')\
$]
计算当$vb(x)$点通过$vb(x_0^')$点穿越表面时的电位跃迁
#figure(
  image("pic/2024-10-30-17-50-03.png", width: 20%),
  numbering: none,
)
$
Phi(vb(x)) = 1/(4 pi epsilon_0) (integral_(S-Delta S) sigma(vb(x'))/abs(vb(x) - vb(x')) dd(a') + integral_(Delta S) sigma(vb(x'))/abs(vb(x) - vb(x')) dd(a'))\
$
其中
$
1/(4 pi epsilon_0) integral_(Delta S) sigma(vb(x'))/abs(vb(x) - vb(x')) dd(a') = sigma/(4 pi epsilon_0) integral_0^r_0 (2 pi r')/sqrt(r'^2 + R^2) dd(r')
$
- 对于体电荷和表面电荷，电势处处连续，在电荷分布范围内也如此。
- 对于点、线或者电偶极层，电势在跃变处不连续。

=== 偶极子层 Dipole Layers

两个接近的表面，一个表面的表面电荷密度为$σ(x)$，另一个表面相邻点的表面电荷密度相等且相反。

#figure(
  image("pic/2024-09-20-20-44-07.png", width: 30%),
  numbering: none,
)

Strength distribution: $D(x)$
$
lim_(d(x) -> 0) sigma(x) d(x) = D(x)
$
偶极矩的方向：与表面平行，从负电荷到正电荷。

下面计算偶极层产生的电位。我们使用公式：
$
Phi(vb(x)) = 1/(4 pi epsilon_0) integral sigma(vb(x'))/abs(vb(x) - vb(x')) dd(a')\
$
对于偶极层，有
$
Phi(vb(x)) = 1/(4 pi epsilon_0) integral_S sigma(vb(x'))/abs(vb(x) - vb(x')) dd(a') - 1/(4 pi epsilon_0) integral_S' sigma(vb(x'))/abs(vb(x) - vb(x') + vu(n)d) dd(a')\
$
#figure(
  image("pic/2024-09-20-20-51-07.png", width: 50%),
  numbering: none,
)
对于很小的$d$，有
$
1/abs(vb(x) - vb(x') + vu(n)d) = 1/abs(vb(x) - vb(x')) + vu(n) dot grad(1/abs(vb(x) - vb(x'))) d\
$
得到
$
Phi(vb(x)) &= -1/(4 pi epsilon_0) integral_S (sigma(vb(x'))d) vu(n) dot grad(1/abs(vb(x) - vb(x'))) dd(a')\
&= 1/(4 pi epsilon_0) integral_S D(vb(x')) dot bold(nabla)'(1/abs(vb(x) - vb(x'))) dd(a')\
$
而
$
vu(n) dot bold(nabla)'(1/abs(vb(x) - vb(x'))) dd(a')= vu(n) dot (vb(x) - vb(x'))/abs(vb(x) - vb(x'))^3 dd(a') = - (cos theta dd(a'))/abs(vb(x) - vb(x'))^2= -dd(Omega)
$
从而得到
#text(fill: blue)[
$
Phi(vb(x)) = - 1/(4 pi epsilon_0) integral_S D(vb(x'))dd(Omega)\
$
]
- 面元$dd(a')$上的偶极子层$D$在$P$处产生的电势就是$D$与$dd(a')$在$P$处所对的立体角元$dd(Ω)$的负乘积除以$4π ε_0$。
- 对于恒定的$D$，无论表面形状如何，其电势都只是矩除以$4 π ε_0$与表面在观测点处所占角的乘积。
- 对于偶极子层，电势在跃变处的不连续性是由于电势的跃变是由偶极子层的电势产生的。
$
Phi_2 - Phi_1 = D/(2 epsilon_0) - (-D/(2 epsilon_0)) = D/epsilon_0
$
立体角是$2 pi$，所以$Phi = D/(2 epsilon_0)$。

== Green定理 Green’s Theorem

$
integral_V (div vb(A)) dd(x,3) = integral.cont_S vb(A) dot vu(n) dd(a)\
$

令$A = phi grad psi$，则有
$
div (phi grad psi) = phi laplacian psi + grad phi dot grad psi\
phi grad psi dot vu(n) = phi partialderivative(psi,n)\
$
从而
#text(fill: red)[$
integral_V (phi laplacian psi + grad phi dot grad psi) dd(x,3) = integral.cont_S phi partialderivative(psi,n) dd(a)\
$<Green1>]

这是*第一Green公式*。

交换$phi$和$psi$，做差，得到*第二Green公式——Green定理*：
#text(fill: red)[
$
integral_V (phi laplacian psi - psi laplacian phi) dd(x,3) = integral.cont_S (phi partialderivative(psi,n) - psi partialderivative(phi,n)) dd(a)\
$<Green2>]

#newpara()

在静电场中，令
$
phi = Phi(vb(x')) => nabla^('2) Phi = - rho(vb(x'))/epsilon_0\
psi = 1/R = 1/abs(vb(x) - vb(x')) => nabla^('2) psi = - 4 pi delta(vb(x) - vb(x'))\
$
则有
$
integral_V (-4 pi Phi(vb(x')) delta(vb(x) - vb(x')) + 1/(epsilon_0 R) rho(vb(x'))) dd(vb(x'), 3) = integral.cont_S (Phi partialderivative(,n)(1/R) - 1/R partialderivative(Phi,n)) dd(a')\
$
如果点$x$位于体积$V$内：
$
- 4 pi Phi(vb(x)) + integral_V 1/(epsilon_0 R) rho(vb(x')) dd(vb(x'), 3) = integral.cont_S (Phi partialderivative(,n)(1/R) - 1/R partialderivative(Phi,n)) dd(a')\
$
得到$Phi$的一个表达式
#text(fill: blue)[$
Phi(vb(x)) = 1/(4 pi epsilon_0) integral_V rho(vb(x'))/abs(vb(x) - vb(x')) dd(vb(x'), 3) + 1/(4 pi) integral.cont_S (1/R partialderivative(Phi,n) - Phi partialderivative(,n)(1/R) ) dd(vb(a)')\
$]
其中$1/R partialderivative(Phi,n)$项等价于表面电荷分布
$
& Phi(vb(x)) = 1/(4 pi epsilon_0) integral_V sigma(vb(x'))/abs(vb(x) - vb(x')) dd(a')\
& sigma(vb(x')) = epsilon_0 partialderivative(Phi,n)
$
而$Phi partialderivative(,n)(1/R)$项等价于偶极子层
$
& Phi(vb(x)) = 1/(4 pi epsilon_0) integral_S D(vb(x')) vu(n') dot bold(nabla') (1/abs(vb(x) - vb(x'))) dd(a')\
& D(vb(x')) = - epsilon_0 Phi
$


== 唯一性定理 Uniqueness of the solution with Dirichlet or Neumann Boundary conditions

对于Poisson（或Laplace）方程，怎样的边界条件才能确保在边界区域内存在一个唯一的、良好的（即物理上合理的）解？

- Dirichlet边界条件：$eval(Phi(vb(x)))_S = f(S)$
- Neumann边界条件：$eval(partialderivative(Phi(vb(x)),n))_S = g(S)$
- 混合边界条件：一部分边界上给定Dirichlet条件，另一部分给定Neumann条件。

*唯一性定理*：在给定边界条件下，Poisson方程的解是唯一的。

假设有两个解$Phi_1$和$Phi_2$，则有
$
laplacian Phi_1 = - rho/epsilon_0\
laplacian Phi_2 = - rho/epsilon_0\
$
从而
$
laplacian (Phi_1 - Phi_2) = laplacian U = 0\
$
再根据边界条件：
$
laplacian U = 0\
U = 0 "on" S\
partialderivative(U,n) = 0 "on" S\
$
从而由Green第一公式：
$
integral_V (U laplacian U + grad U dot grad U) dd(x,3) = integral.cont_S U partialderivative(U,n) dd(a)\
integral_V grad U dot grad U dd(x,3) = 0\
abs(grad U) = 0\
U = "Const"\
$
$U=f(S)$的含义是，对于Dirichlet边界条件，$S$上的$U=0$，因此在 $V$内部，$Phi_1=Phi_2$。对于Neumann边界条件，除了一个不重要的任意加常数外，解是唯一的。
- 静电问题仅由封闭表面（部分或全部可能位于无穷远处）上的 Dirichlet 或 Neumann 边界条件确定。
- 在封闭边界上任意同时指定 Dirichlet 和 Neumann 边界条件（Cauchy 边界条件）的 Poisson 方程的解并不存在！

== Green函数 Formal Solution of Electrostatic Boundary-Value Problem with Green Function

格林函数是一类满足以下条件的函数：
$
nabla^('2) G(vb(x),vb(x')) = - 4 pi delta(vb(x) - vb(x'))\
$
可以写成
$
G(vb(x),vb(x')) = 1/abs(vb(x) - vb(x')) + F(vb(x),vb(x'))\
$
其中
$
nabla^('2) F(vb(x),vb(x')) = 0\
nabla^('2) 1/abs(vb(x) - vb(x')) = - 4 pi delta(vb(x) - vb(x'))\
$
Formal Solution with Green Function
$
integral_V (phi laplacian psi - psi laplacian phi) dd(x,3) = integral.cont_S (phi partialderivative(psi,n) - psi partialderivative(phi,n)) dd(a)\
$
@Green2[Green公式] 中令
$
phi = Phi(vb(x')) => nabla^('2) Phi = - rho(vb(x'))/epsilon_0\
psi = G(vb(x),vb(x')) => nabla^('2) G(vb(x),vb(x')) = - 4 pi delta(vb(x) - vb(x'))\
$
则有
$
integral_V (-4 pi Phi(vb(x')) delta(vb(x) - vb(x')) + G(vb(x),vb(x')) rho(vb(x'))/epsilon_0) dd(vb(x'), 3) = integral.cont_S (Phi partialderivative(G,n') - G partialderivative(Phi,n')) dd(vb(a)')\
$
得到$Phi$的一个表达式
#text(fill: blue)[$ 
Phi(vb(x)) = 1/(4 pi epsilon_0) integral_V G(vb(x),vb(x')) rho(vb(x')) dd(vb(x'), 3) + 1/(4 pi) integral.cont_S (G partialderivative(Phi,n') - Phi partialderivative(G,n')) dd(vb(a)')\
$]

- For Dirichlet boundary conditions

$
G_D (vb(x),vb(x')) = 0 "for" vb(x') "on" S\
$
则有
$
Phi(vb(x)) = 1/(4 pi epsilon_0) integral_V G_D(vb(x),vb(x')) rho(vb(x')) dd(vb(x'), 3) - 1/(4 pi) integral.cont_S Phi(vb(x')) partialderivative(G_D,n') dd(vb(a)')\
$<DbGreen>

- For Neumann boundary conditions

$
laplacian G = - 4 pi delta(vb(x) - vb(x'))\
$
考虑到@Green1[Green公式]，有
$
integral_V (phi laplacian psi + grad phi dot grad psi) dd(x,3) = integral.cont_S phi partialderivative(psi,n) dd(a)\
"令" phi = 1, psi = G\
integral.cont_S partialderivative(G,n') dd(a') = -4pi
$
$G_N$上最简单的边界条件是
$
partialderivative(G_N,n') = -(4pi)/S "for" vb(x') "on" S\
$
则有
$
Phi(vb(x)) = 1/(4 pi epsilon_0) integral_V G_N(vb(x),vb(x')) rho(vb(x')) dd(vb(x'), 3) + 1/(4 pi) integral.cont_S  partialderivative(Phi,n') G_N dd(vb(a)') + expval(Phi)_S
$

=== Green函数的一些讨论

*对称性*
- 对于电势的Dirichlet边界条件对应的格林函数：
$
G_D (vb(x),vb(x'))= G_D (vb(x'),vb(x))
$
- 对于电势的Neumann边界条件对应的格林函数：
$
G_N (vb(x),vb(x')) - F(vb(x))
$
是关于$vb(x)$和$vb(x')$的对称函数，其中
$
F(vb(x)) = 1/S integral.cont_S G_N (vb(x),vb(y)) dd(a_y)
$

考虑到格林函数是一个单位点源产生的势能，对称性仅仅代表了源点和观测点的物理互换性。

*$F$的含义*
- $F$在Green函数相当于区域外的势能，它补齐了边界条件。

=== 一些Green函数的例子

利用镜像电荷法：

$
Phi(vb(x)) = 1/(4 pi epsilon_0 R) = 1/(4 pi epsilon_0 sqrt((x-x')^2 + (y-y')^2 + (z-z')^2))\
$

- Green function in boundless space

$
G(vb(x),vb(x')) = 1/(abs(vb(x) - vb(x'))) = 1/(sqrt((x-x')^2 + (y-y')^2 + (z-z')^2))\
$

- Green function in upper half space (z>0)

$
G(vb(x),vb(x')) = 1/(sqrt((x-x')^2 + (y-y')^2 + (z-z')^2)) - 1/(sqrt((x-x')^2 + (y-y')^2 + (z+z')^2))\
$

#figure(
  image("pic/2024-09-20-23-00-43.png", width: 50%),
  numbering: none,
)

这里$(x',y',z')$在上半平面，所以$(x',y',-z')$一定在下半平面所，对应的$delta(x',y',-z')$在上半平面是0，从而可以保证$nabla^(2) F = 0$在上半平面成立。

这就意味着，该情形可以等效于在$(x',y',-z')$放置一个与$(x',y',z')$相反的点源。

若要计算势能，便可以用Dirichlet边界条件的Green函数代入@DbGreen[Dirichlet Green函数公式]进行计算。

#figure(
  image("pic/2024-09-20-23-06-52.png", width: 30%),
  numbering: none,
)

- Green function of the out space of a conducting sphere (radius a)

#figure(
  image("pic/2024-09-20-23-07-34.png", width: 30%),
  numbering: none,
)

$
G(vb(x),vb(x')) = 1/sqrt(R^2 + R'^2 - 2R R'cos alpha) - (a/R')/sqrt(R^2 + (a/R')^2 - 2R(a/R')cos alpha)\
$

- Green function of the out space of an infinite long cylinder (radius a)

#figure(
  image("pic/2024-09-20-23-15-06.png", width: 30%),
  numbering: none,
)

对无限长直导线其电场强度为
$
E = lambda/(2 pi epsilon_0 R) = - partialderivative(Phi,n)\
$
而
$
derivative(Phi,r) = -E => Phi = lambda/(2 pi epsilon_0) ln(1/r)\
$
下面求该$Phi$所对应的Green函数（注意不是点源的Green函数）：
$
G(rho,phi;rho',phi') = 2(ln(1/(rho^2 + rho'^2 - 2rho rho' cos(phi - phi'))^(1/2))- ln(z/(rho^2 + b^2 - 2rho b cos(phi - phi'))^(1/2)))\
$
根据边界条件
$
eval(G)_(rho = a) = 0\
$
可以待定出来
$
- 2a b = - 2 z^2 a rho'\
a^2 + b^2 = z^2(a^2 + rho'^2)\
$
解得
$
z = a/rho', b = a^2/rho'\
$
从而得到
$
G(rho,phi;rho',phi') = ln((a^4 + rho^2 rho'^2 - 2a^2 rho rho' cos(phi - phi'))/(a^2(rho^2 + rho'^2 - 2rho rho' cos(phi - phi'))))\
$
同时也可以得到边界条件：
$
eval(partialderivative(G,n'))_Sigma' = - eval(partialderivative(G,rho'))_(rho' = a) = - (2(rho^2-a^2))/(a(rho^2+a^2-2rho a cos(phi - phi')))\
$

== 静电场势能 Electrostatic Potential Energy and Energy Density; Capacitance

=== 电势能 Electrostatic Potential Energy

电势能是在标量电势$Phi$（在无穷远处消失）描述的*局部*电场区域中，点电荷 $q_i$ 从无穷远处到达 $x$ 时对电荷所做的功：
$
W &= - integral_A^B vb(F) dot dd(vb(l)) = - q integral_A^B vb(E) dot dd(vb(l)) = q integral_A^B grad Phi dot dd(vb(l))\
&= q integral_A^B dd(Phi) = q (Phi(B) - Phi(A))\
$
从而
$
W_i = q_i Phi(vb(x_i))\
$
其中$vb(x)$中的电势为
$
Phi(vb(x)) = 1/(4 pi epsilon_0) sum_(j=1,!=i)^(n) q_j/abs(vb(x) - vb(x_j))\
$
电荷$q_i$在$vb(x_i)$位置的势能：
$
W_i = q_i Phi(vb(x_i)) = q_i/(4 pi epsilon_0) sum_(j=1,!=i)^(n) q_j/abs(vb(x_i) - vb(x_j))\
$

=== The Total Potential Energy

求和得到
#text(fill: blue)[
$
W &= 1/(4 pi epsilon_0) sum_(i=1)^(n) sum_(j<i) (q_i q_j)/abs(vb(x_i) - vb(x_j))\
&= 1/(8 pi epsilon_0) sum_(i!=j) (q_i q_j)/abs(vb(x_i) - vb(x_j))\
$
]
这里没有$i=j$一项，故考虑是互能而忽略自能。

如果是连续分布
$
W = 1/(8 pi epsilon_0) integral integral (rho(vb(x)) rho(vb(x')))/abs(vb(x) - vb(x')) dd(vb(x),3) dd(vb(x'),3)\
$
而
$
Phi(vb(x)) = 1/(4 pi epsilon_0) integral rho(vb(x'))/abs(vb(x) - vb(x')) dd(vb(x'), 3)\
$
从而
#text(fill: blue)[
$
W = 1/2 integral Phi(vb(x)) rho(vb(x)) dd(vb(x),3)\
$
]
这里考虑了自能。

=== 能量密度 Energy Density

如何通过场解读能量？

$
W &= 1/(2 epsilon_0) integral Phi(vb(x)) rho(vb(x)) dd(vb(x),3)\
&=^(laplacian Phi = - rho/epsilon_0) - epsilon_0/(2) integral Phi(vb(x)) laplacian Phi(vb(x)) dd(vb(x),3)\
&= epsilon_0/2 integral abs(grad Phi)^2 dd(vb(x),3)\
&= epsilon_0/2 integral abs(E)^2 dd(vb(x),3)\
$
积分是在所有空间上进行的，因此表面积分是在无穷大表面上进行的，在无穷大表面上，势为零，场也为零。

从而得到
#text(fill: blue)[
$
w = 1/2 epsilon_0 abs(E)^2
$
]
这个式子考虑了包含"自能 "贡献和相互作用势能。

- 考虑位于$vb(x_1)$和$vb(x_2)$的两个点电荷$q_1$和$q_2$：
$
E = 1/(4 pi epsilon_0) (q_1 (vb(x) - vb(x_1))/abs(vb(x) - vb(x_1))^3 + q_2 (vb(x) - vb(x_2))/abs(vb(x) - vb(x_2))^3)\
abs(E)^2 = 1/(16 pi^2 epsilon_0^2) (q_1^2/abs(vb(x) - vb(x_1))^4 + q_2^2/abs(vb(x) - vb(x_2))^4 + 2 (q_1 q_2 (vb(x) - vb(x_1)) dot (vb(x) - vb(x_2)))/(abs(vb(x) - vb(x_1))^3 abs(vb(x) - vb(x_2))^3)\
$
从而
$
32 pi^2 epsilon_0^2 w = q_1^2/abs(vb(x) - vb(x_1))^4 + q_2^2/abs(vb(x) - vb(x_2))^4 + 2 (q_1 q_2 (vb(x) - vb(x_1)) dot (vb(x) - vb(x_2)))/(abs(vb(x) - vb(x_1))^3 abs(vb(x) - vb(x_2))^3)\
$
其中前两项是自能、后一项是互能。

=== 互能 interaction potential energy

$
W_"int" = (q_1 q_2)/(16 pi^2 epsilon_0) integral ((vb(x) - vb(x_1)) dot (vb(x) - vb(x_2)))/(abs(vb(x) - vb(x_1))^3 abs(vb(x) - vb(x_2))^3) dd(vb(x),3)\
$
令
$
vb(rho) = (vb(x) - vb(x_1))/abs(vb(x_1) - vb(x_2)), vb(n) = (vb(x_1) - vb(x_2))/abs(vb(x_1) - vb(x_2))\
$
则有
$
W_"int" = 1/(4 pi epsilon_0) (q_1 q_2)/abs(vb(x_1) - vb(x_2)) (1/(4 pi) integral (vb(rho) dot (vb(rho) + vb(n)))/(abs(vb(rho))^3 abs(vb(rho) + vb(n))^3) dd(vb(rho),3))\
$
这是因为
$
integral ((vb(x) - vb(x_1)) dot (vb(x) - vb(x_2)))/(abs(vb(x) - vb(x_1))^3 abs(vb(x) - vb(x_2))^3) dd(vb(x),3) &= integral ((vb(x) - vb(x_1)) dot (vb(x) - vb(x_2)))/(abs(vb(x) - vb(x_1))^3 abs(vb(x) - vb(x_2))^3) abs(vb(x_1) - vb(x_2))^3 dd(rho,3)\
&= 1/abs(vb(x_1) - vb(x_2)) integral (vb(rho) dot (vb(rho) + vb(n)))/(abs(vb(rho))^3 abs(vb(rho) + vb(n))^3) dd(vb(rho),3)\
$
而
$
(vb(rho) + vb(n))/abs(vb(rho) + vb(n))^3 = - bold(nabla)_rho (1/abs(vb(rho) + vb(n)))
$
则有
$
integral (vb(rho) dot (vb(rho) + vb(n)))/(abs(vb(rho))^3 abs(vb(rho) + vb(n))^3) dd(vb(rho),3) &= - integral (vb(rho)/rho^3 dot bold(nabla)_rho (1/abs(vb(rho) + vb(n)))) dd(vb(rho),3)\
&= = integral bold(nabla)_rho ( vb(rho)/rho^3 1/abs(vb(rho) + vb(n))) dd(vb(rho),3) + integral 1/abs(vb(rho) + vb(n)) bold(nabla)_rho dot (vb(rho)/rho^3) dd(vb(rho),3)\
&= - integral_S (vb(rho)/rho^3 1/abs(vb(rho) + vb(n))) dot vu(n) dd(a) + integral_S 1/abs(vb(rho) + vb(n)) 4 pi delta(vb(rho)) dot vu(n) dd(a)\
&= 4pi
$
从而得到
$
W_"int" = 1/(4 pi epsilon_0) (q_1 q_2)/abs(vb(x_1) - vb(x_2))\
$

*Thomson原理*：在电荷分布的情况下，电荷会尽可能地聚集在一起，以减少总能量。

#problem[表面电荷密度$𝜎(x)$导体表面单位面积上的力。]
#solution[
$
vu(n) dot (vb(E_2) - vb(E_1)) = sigma/epsilon_0\
vb(E_1) = 0 => vu(n) dot vb(E_2) = sigma/epsilon_0\
$
则有能量密度
$
w = 1/2 epsilon_0 abs(vb(E))^2 = sigma^2/(2 epsilon_0)\
$
现在，如果我们想象导体表面的面元$Δ a$向外发生微小位移$Δ x$，静电能量就会减少：
$
Delta W = - sigma^2/(2 epsilon_0) Delta a Delta x\
$
从而有在单位面积上的力
$
F = -derivative(W,x) = sigma^2/(2 epsilon_0)\
$
]

#problem[导体系统的势能]
#solution[
考虑一个由$n$个导体组成的系统，每个导体都具有电势$V_i$和总电荷$Q_i$（$i=1,2,...n$）。

$
V_i = sum_(j = 1)^n p_(i j) Q_j
$
其中$p_(i j)$依赖于导体的几何形状和位置
$
Q_i = sum_(j = 1)^n C_(i j) V_j
$
其中，*导体的电容* ($C_(i i)$)是导体保持单位电位时的总电荷量，所有其他导体都保持零电位；感应系数($C_(i j)$)可用来表示两个导体系统的电容。

导体系统的势能：
$
W = 1/2 sum_(i = 1)^n Q_i V_i = 1/2 sum_(i = 1)^n sum_(j = 1)^n C_(i j) V_i V_j\
$
]

#problem[半径为 $b$、电荷量为 $Q$ 的球形导体外壳。求： 
+ 它的电容，
+ 半径$r$处的能量密度
+ 总电场能量
+ 如果在它里面再放一个半径为$a$的金属球壳，使内壳处的电场最小，求$a$和$b$的关系。
]
#solution[
+ 电容

  由Gauss定律：
  $
  E(r) = Q/(4 pi epsilon_0 r^2) vu(e_r)
  $
  进一步可以得到电势
  $
  V(r) = integral_r^oo E(r) dd(r) = Q/(4 pi epsilon_0 r)
  $
  从而得到电容
  $
  C = Q/V(b) = 4 pi epsilon_0 b
  $

+ 能量密度

  由能量密度的定义：
  $
  w(r) = 1/2 epsilon_0 E(r)^2 = Q^2/(32 pi^2 epsilon_0 r^4)
  $

+  总电场能量

  由能量密度的定义：
  $
  W_e = 4 pi epsilon_0 integral_0^b w(r) r^2 dd(r) = Q^2/(8 pi epsilon_0 b)\
  W_e = 1/2 V(b) Q = Q^2/(8 pi epsilon_0 b)\
  $

+ 金属球壳

  由Gauss定律：
  $
  E(r) = Q/(4 pi epsilon_0 r^2) vu(e_r) (a<r<b)
  $
  进一步可以得到电势
  $
  V(r) = integral_a^b E(r) dd(r) = Q/(4 pi epsilon_0) (1/a - 1/b)
  $
  从而得到电容
  $
  C = Q/V(b) = (4 pi epsilon_0 )/(1/a - 1/b)
  $
  从而
  $
  E(r) = (4 pi epsilon_0 V)/(4 pi epsilon_0 r^2 (1/a - 1/b)) e_r = V/(r^2 (1/a - 1/b)) e_r\
  E(a) = (V b)/(a b - a^2)
  $
  为了使内壳处的电场最小
  $
  derivative(E(a),a) = 0 => a = b/2, E(a) = (4V)/b
  $

]

== 求解Laplace方程和Poisson方程的变分法 Variational Method for Solving Laplace’s and Poisson’s Equations

=== 泛函 Functional

函数指从空间$X$（函数空间）到实数或复数的映射，被视为函数的函数。

函数通常表示为涉及函数及其导数的定积分。

例如：
$
I(y(x)) = integral_(x_1)^(x_2) f(x, y(x), y_x (x)) dd(x)
$
- 两点之间的距离
  $
  L = integral_(x_1)^(x_2) sqrt(1 + y_x^2) dd(x)
  $
- 两点下的最速下降线
  $
  T = integral_(x_1)^(x_2) sqrt(1 + y_x^2)/sqrt(2 g y) dd(x)
  $

=== 变分原理 Variational Principle

变分法微积分中使用的一种科学原理，它为寻找使依赖于这些函数的量的值极值化的函数提供了一般方法。

- Principle of least action（最⼩作⽤量原理）
- Hamilton’s principle in physics （哈密尔顿物理学原理）
- Thomson’s theorem in electrostatics（汤姆逊静电定理）
- Fermat’s principle in optics（光学费马原理）

1. *Principle of Least Action（最小作用量原理）*
  
    最小作用量原理是物理学中的一个基本原理，特别是在经典力学、量子力学和相对论中具有广泛应用。它指出一个系统的运动轨迹是使得某种数量（称为“作用量”）达到极小或极值的轨迹。作用量通常定义为在给定时间段内拉格朗日量（系统的动能与势能之差）在时间上的积分。

    简单地说，物体从一个状态移动到另一个状态时，它会选择一条使得“作用量”最小的路径。这与牛顿的力学方程是一致的，但提供了一种从整体上描述运动的方式，而不是逐点计算物体的运动。

2. *Hamilton’s Principle in Physics（哈密尔顿物理学原理）*

    哈密尔顿原理是最小作用量原理的具体形式之一。它表述为：一个物理系统在两点之间的运动会使其作用量达到极小（或某些情况下是极值）。在这个原理中，作用量 \(S\) 是系统的拉格朗日函数 \(L\) 在时间 \(t_1\) 到 \(t_2\) 之间的积分：

    $
    S = integral_(t_1)^(t_2) L(q, q', t) dd(t)
    $

    哈密尔顿原理是许多物理定律（例如经典力学、量子力学、相对论等）的基础。通过这个原理，我们可以从极值问题中导出拉格朗日方程，从而描述系统的动力学。

3. *Thomson’s Theorem in Electrostatics（汤姆逊静电定理）*

  汤姆逊定理主要应用于静电学，描述的是电荷在导体表面的分布。该定理指出，在静电平衡时，导体表面的电荷分布是使得电势能最小的分布。具体来说，电荷在导体表面上会重新排列，直到达到静电平衡，此时电势能达到极小值。

  这个定理的物理意义是，电荷倾向于在导体表面以某种方式分布，使得整个系统的能量是最小的。这也解释了为什么在静电平衡时，导体的电场在其内部为零。

4. *Fermat’s Principle in Optics（光学费马原理）*

  费马原理是光学中的基本原理之一，它表述了光在传播过程中会选择一种使其光程最短的路径。光程是光在介质中的传播距离与介质的折射率的乘积。费马原理可以解释光的反射和折射现象，实际上它是斯涅尔定律的背后理论依据。

  费马原理用数学的语言来说，就是光在两个点之间传播时，经过的路径会使得从起点到终点的光程达到极值（通常是最小值）。例如，当光从空气进入水中时，它会改变传播方向，以使得从空气到水的总光程最短，这就是折射现象。


#figure(
  image("pic/2024-09-25-10-58-58.png", width: 40%),
  numbering: none,
)

随着系统的演化，$q$在配置空间中描绘出一条路径（仅显示部分路径）。在系统配置（$δ q$）发生微小变化的情况下，系统走过的路径（红色）具有静态作用（$δ S = 0$）。

- 如何找到所需的极值函数？
  - 找到一个函数。这是 E/M 场的类能量函数。它的极值函数应是Poisson方程。
  - 用一些待定义的参数构建一个"试验"函数。
  - 将 "试验 "函数放入函数中，并设置未定义参数的偏导数。 
  - 解方程。

=== Dirichlet/Neumann 边界条件下的泛函

- For Dirichlet boundary condition:

$
I(Psi) = 1/2 integral_V grad Psi dot grad Psi dd(x,3) - integral_V g Psi dd(x,3)\
$
其中
- $I(𝛹)$：类能量函数
- $𝛹(x)$：在体积$V$内部和表面$S$上都well-behaved
- $g(x)$：在体积$V$内部没有奇异点的特殊源函数

*当泛函的变分为零时，泛函会获得极值。*

$
delta I(Psi) &= I(Psi + delta Psi) - I(Psi) = integral_V grad Psi dot grad delta Psi dd(x,3) - integral_V g delta Psi dd(x,3)\
$
由@Green1[Green公式]，有
$
integral_V (delta Psi laplacian Psi + grad (delta Psi) dot grad Psi) dd(x,3) = integral.cont_S delta Psi partialderivative(Psi,n) dd(a)\
$
则有
$
delta I(Psi) &= - integral_V delta Psi laplacian Psi dd(x,3) - integral_V g delta Psi dd(x,3) + integral.cont_S delta Psi partialderivative(Psi,n) dd(a)\
&= integral_V (- laplacian Psi - g) delta Psi dd(x,3) + integral.cont_S partialderivative(Psi,n) delta Psi dd(a)\
$
考虑到边界面上的$δ Psi=0$（Dirichlet 边界条件）。我们得到
$
laplacian Psi = - g -> laplacian psi = - rho/epsilon_0\
$

- For Neumann boundary condition:

$
I(Psi) = 1/2 integral_V grad Psi dot grad Psi dd(x,3) - integral_V rho Psi dd(x,3) - integral.cont_S f Psi dd(a)\
$
其中
$
eval(partialderivative(Psi,n))_S = f(vb(s))\
$
就有
$
delta I(Psi) - integral_V (- laplacian Psi - g) delta Psi dd(x,3) + integral.cont_S delta Psi (partialderivative(Psi,n) - f(s)) dd(a) -> laplacian Psi = - g "within" V
$

#problem[(Two-dimensional problem)
一个单位半径的空心圆柱体以$z$轴为中心，内部源密度为
$
g(vb(x)) = g(rho) = - 5(1-rho) + 10^4 rho^5 (1-rho)^5
$
角方向对称，与$z$无关。电势在$ρ=1$时消失。
]
#solution[
- Functional: Dirichlet boundary

  $
  I(Psi) = 1/2 integral_V grad Psi dot grad Psi dd(x,3) - integral_V g Psi dd(x,3)\
  $

- "试验" 函数

  $
  Psi_1 = alpha_1 (1-rho) + beta_1 (1 - rho)^2 + gamma_1 (1 - rho)^3\
  Psi_2 = alpha rho^2 + beta rho^3 + gamma rho^4 - (alpha + beta + gamma)
  $

- 将泛函代入

  $
  delta I(Psi) = integral_V (- laplacian Psi - g) delta Psi dd(x,3) + integral.cont_S partialderivative(Psi,n) delta Psi dd(a)\
  $

  #figure(
    image("pic/2024-09-25-16-16-09.png", width: 80%),
    numbering: none,
  )
  将 α、β、γ 的偏导数设为零，求解方程即可得到 α、β、γ 的最佳值。

  #figure(
    image("pic/2024-09-25-16-18-17.png", width: 80%),
    numbering: none,
  )
]

== 二维静电问题的松弛法 Relaxation Method for Two-Dimensional Electrostatic Problems

#figure(
  image("pic/2024-09-25-16-24-31.png", width: 80%),
  numbering: none,
)

#figure(
  image("pic/2024-09-25-16-24-45.png", width: 80%),
  numbering: none,
)

#figure(
  image("pic/2024-09-25-16-25-01.png", width: 80%),
  numbering: none,
)

#problem[
Calculate the potential distribution inside
one long metal groove with the two side
surfaces and the bottom surface grounded,
and the potential of the upper surface 10V.

#figure(
  image("pic/2024-09-25-16-28-41.png", width: 40%),
  numbering: none,
)
]

#solution[

#figure(
  image("pic/2024-09-25-16-29-34.png", width: 80%),
  numbering: none,
)

#figure(
  image("pic/2024-09-25-16-29-50.png", width: 80%),
  numbering: none,
)
]