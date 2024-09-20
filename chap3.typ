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
#text(fill: blue)[$
Phi(vb(x)) = 1/(4 pi epsilon_0) integral rho(vb(x'))/abs(vb(x) - vb(x')) dd(vb(x'), 3)\
$]


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
Phi(vb(x)) = 1/(4 pi epsilon_0) integral sigma(vb(x'))/abs(vb(x) - vb(x')) dd(vb(x'), 3)\
$]
计算当$vb(x)$点通过$vb(x_0^')$点穿越表面时的电位跃迁
$
Psi(vb(x)) = 1/(4 pi epsilon_0) (integral_(S-Delta S) sigma(vb(x'))/abs(vb(x) - vb(x')) dd(a') + integral_(Delta S) sigma(vb(x'))/abs(vb(x) - vb(x')) dd(a'))\
$
其中
$
1/(4 pi epsilon_0) integral_(Delta S) sigma(vb(x'))/abs(vb(x) - vb(x')) dd(a') = sigma/(4 pi epsilon_0) integral_0^r_0 (2 pi r')/sqrt(r'^2 + R^2) dd(r')
$
- 对于体电荷和表面电荷，电势处处连续。
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
& Phi(vb(x)) = 1/(4 pi epsilon_0) integral_S D(vb(x')) vu(n') dot vb(nabla') (1/abs(vb(x) - vb(x'))) dd(a')\
& D(vb(x')) = - epsilon_0 Phi
$


== 唯一性定理 Uniqueness of the solution with Dirichlet or Neumann Boundary conditions

对于泊松（或拉普拉斯）方程，怎样的边界条件才能确保在边界区域内存在一个唯一的、良好的（即物理上合理的）解？

- Dirichlet边界条件：$eval(Phi(vb(x)))_S = f(S)$
- Neumann边界条件：$eval(partialderivative(Phi(vb(x)),n))_S = g(S)$
- 混合边界条件：一部分边界上给定Dirichlet条件，另一部分给定Neumann条件。

*唯一性定理*：在给定边界条件下，泊松方程的解是唯一的。

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
integral_S partialderivative(G,n') dd(a') = -4pi
$
$G_N$上最简单的边界条件是
$
partialderivative(G_N,n') = -(4pi)/S "for" vb(x') "on" S\
$
则有
$
Phi(vb(x)) = 1/(4 pi epsilon_0) integral_V G_N(vb(x),vb(x')) rho(vb(x')) dd(vb(x'), 3) + 1/(4 pi) integral.cont_S Phi(vb(x')) partialderivative(Phi,n') G_N dd(vb(a)') + expval(Phi)_S
$

=== Green函数的一些讨论

*对称性*
- 对于电势的Dirichlet边界条件对应的格林函数：
$
G_D (vb(x),vb(x'))= G_D (vb(x'),vb(x))
$
- 对于电势的Neumann边界条件对应的格林函数：

// TODO

考虑到格林函数是一个单位点源产生的势能，对称性仅仅代表了源点和观测点的物理互换性。

=== 一些Green函数的例子

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
