#import"@preview/physica:0.9.2":*
#import "template.typ": *

= Maxwell Equations, Macroscopic Electromagnetism, Conservation Laws

== Maxwell’s Displacement Current, Maxwell Equations

=== Basic laws of electricity and magnetism:

在前面的章节中，我们推导得到了如下的方程
$
"Gauss' Law" & div vb(D) = 0 & vb(D) "electric displacement"\
"Ampere's Law"(div vb(J) = 0) & curl vb(H) = vb(J)  & vb(H) "magnetic field"\
"Faraday's Law" & curl vb(E) = - pdv(vb(B),t)  & vb(E) "electric field"\
"Absence of Free Magnetic Poles" & div vb(B) = 0 & vb(B) "magnetic induction"
$
上述方程是在*静电、净磁和准静态场*下获得的。

其中用到了电流密度
$
div vb(J) = div (curl vb(H)) = 0
$
但如果时间依赖，有连续性方程
$
div vb(J) + pdv(rho,t) = 0
$
这与上述不一致。

=== Displacement Current

为了解决这个问题，我们引入了位移电流的概念。位移电流是由电场的变化产生的，它的密度为
$
vb(J_d) = pdv(vb(D),t)
$
这是由连续性方程
$
div vb(J) + pdv(rho,t) = div (vb(J) + pdv(vb(D),t)) = 0
$
就有
$
curl vb(H) = vb(J) + pdv(vb(D),t)
$

=== Maxwell Equations

将位移电流加入到Ampere's Law中，我们得到了Maxwell方程组
$
div vb(D) &= 0\
curl vb(H) &= vb(J) + pdv(vb(D),t)\
div vb(B) &= 0\
curl vb(E) + pdv(vb(B),t) &= 0
$
Maxwell equations + Lorentz force equation + Newton's second law of motion $=>$ A complete descripion of the classical dynamics of interactng charged partcles & electromagnetic fields
$
vb(F) = q (vb(E) + vb(v) x vb(B))\
dv(vb(P),t) = vb(F)
$
Boundary Conditions:
$
(vb(D)_2 - vb(D)_1) dot vu(n)_(21) = sigma\
(vb(B)_2 - vb(B)_1) dot vu(n)_(21) = 0\
vu(n)_(21) times (vb(E)_2 - vb(E)_1) = 0\
vu(n)_(21) times (vb(H)_2 - vb(H)_1) = vb(K)
$

=== What Maxwell had predicted

- light was an electromagnetic wave phenomenon;
- electromagnetic waves of all frequencies could be produced.

=== Role of Maxwell Equations in Theoretical Physics

- 电磁波
- 同步辐射
- 电力和磁力的统一
- 洛伦兹变换下的不变性
- 爱因斯坦的狭义相对论
- 量子力学的第一个黄金胜利——量子电动力学
- 衡量不变性-->杨-米尔斯理论-->电弱理论
- 量规电弱理论和量规强理论的结合-->粒子物理学的SM
- 麦克斯韦方程：引领理论物理学新革命的自信原型。它们是否还隐藏着更多的宝藏？

== Vector and Scalar Potentials

Maxwell方程（四个耦合一阶偏微分方程） $=>^(Phi,vb(A))$ 二阶偏微分方程

矢量势和标量势由两个其次方程引入
$
div vb(B) = 0 => vb(B) = curl vb(A)\
curl vb(E) + pdv(vb(B),t) = 0 => curl (vb(E) + pdv(vb(A),t)) = 0 => vb(E) = - grad Phi - pdv(vb(A),t)
$
代入两个非齐次方程
$
div vb(D) = 0 => laplacian Phi + pdv(,t)(div vb(A)) = - rho/epsilon_0\
curl vb(H) = vb(J) + pdv(vb(D),t) => laplacian vb(A) - 1/c^2 pdv(vb(A),t,2) - grad(div vb(A) + 1/c^2 pdv(Phi,t)) = - mu_0 vb(J)
$

- 磁矢量势和电标量势是不唯一的
- 二者有物理意义： Lagrangian
    $
    L = T - V , vb(F) = - grad V
    $
    在Electromagnetic system
    $
    vb(F) = q (vb(E) + vb(v) times vb(B))\
    V = q Phi - q vb(v) dot vb(A)
    $

#problem[

Find the charge and current distributions that would give rise to the potentials, where $k$ is a constant, and $c=1/sqrt(mu_0 epsilon_0)$.
$
Phi &=0\
vb(A) &= cases(
    (mu_0 k)/(4c) (c t - abs(x))^2 vu(z) & "for" abs(x) < c t,
    0 & "for" abs(x) > c t
)
$
]

#solution[

#figure(
  image("pic/2024-11-27-11-09-47.png", width: 90%),
  numbering: none,
)
]

=== Uncoupling of $vb(A)$ and $Φ$

$
laplacian vb(A) - 1/c^2 pdv(vb(A),t,2) - grad(div vb(A) + 1/c^2 pdv(Phi,t)) = - mu_0 vb(J)
$

Lorenz Condition
$
div vb(A) + 1/c^2 pdv(Phi,t) = 0
$
就有
$
laplacian Phi - 1/c^2 pdv(Phi,t,2) = - rho/epsilon_0\
laplacian vb(A) - 1/c^2 pdv(vb(A),t,2)  = - mu_0 vb(J)
$
记d'Alembertian operator
$
square = laplacian - 1/c^2 pdv(,t,2)
$
就有
$
square Phi = - rho/epsilon_0\
square vb(A) = - mu_0 vb(J)
$

==== How to satisfy the Lorenz condition

规范变换
$
curl grad Lambda = 0
$
做变换
$
vb(A) -> vb(A)' = vb(A) + grad Lambda\
$
仍有
$
curl vb(A)' = curl vb(A)\
vb(B)' = vb(B)
$
由于
$
vb(E)' + pdv(vb(A)',t) = - grad Phi'\
vb(E)' + pdv((vb(A) + grad Lambda),t) = - grad Phi'
$
就有
$
&vb(E)' + pdv(vb(A),t) = - grad (Phi' - pdv(Lambda,t))\
&vb(E) + pdv(vb(A),t) = - grad Phi
$
取
$
Phi -> Phi' = Phi - pdv(Lambda,t)
$
就有
$
vb(E)' = vb(E)
$
这样的变换可以满足Lorenz条件。

== Gauge Transformations, Lorenz Gauge, Coulomb Gauge

规范变换是
$
vb(A) -> vb(A)' = vb(A) + grad Lambda\
Phi -> Phi' = Phi - pdv(Lambda,t)
$
规范变换的守恒量是
$
vb(B) -> vb(B)' = vb(B)\
vb(E) -> vb(E)' = vb(E)
$
在规范转换过程中，如何限制$Φ$和$vb(A)$满足Lorenz规范：

对
$
div vb(A) + 1/c^2 pdv(Phi,t) != 0
$
希望变换后
$
div vb(A)' + 1/c^2 pdv(Phi',t) = 0
$
那么就有
$
div vb(A)' + 1/c^2 pdv(Phi',t) = div (vb(A) + grad Lambda) + 1/c^2 pdv(Phi - pdv(Lambda,t),t) = div vb(A) + 1/c^2 pdv(Phi,t) + laplacian Lambda - 1/c^2 pdv(Lambda,t,2)
$
就有方程
$
laplacian Lambda - 1/c^2 pdv(Lambda,t,2) = - (div vb(A) + 1/c^2 pdv(Phi,t))
$

=== Lorenz Gauge

$Φ$和$vb(A)$ 可以变换到 $Φ'$和$vb(A)'$ ，满足Lorenz规范。并且这样的$Φ'$和$vb(A)'$不是唯一的。

如果$Φ$和$vb(A)$满足Lorenz规范
$
div vb(A) + 1/c^2 pdv(Phi,t) = 0
$
只要有
$
laplacian Lambda - 1/c^2 pdv(Lambda,t,2) = 0\
vb(A) -> vb(A)' = vb(A) + grad Lambda\
Phi -> Phi' = Phi - pdv(Lambda,t)
$
这样的变换的结果仍然满足Lorenz规范。

在Lorenz规范下，Maxwell方程组变为非均质波方程 d’Alembertian
$
laplacian Phi - 1/c^2 pdv(Phi,t,2) = - rho/epsilon_0\
laplacian vb(A) - 1/c^2 pdv(vb(A),t,2)  = - mu_0 vb(J)
$
Lorenz规范与所选坐标系无关，因此很自然地与狭义相对论相吻合。

=== Coulomb Gauge

在 Coulomb 规范下
$
div vb(A) = 0
$
非均质波方程写作
$
laplacian Phi = - rho/epsilon_0\
laplacian vb(A) - 1/c^2 pdv(vb(A),t,2)  = - mu_0 vb(J) + 1/c^2 grad pdv(Phi,t)
$

*瞬时*：电荷密度$ρ(x,t)$和标量电势$Φ(x,t)$自发出现，没有任何延迟。
$
Phi(vb(x), t) = 1/(4 pi epsilon_0) integral rho(vb(x)',t)/abs(vb(x) - vb(x)') dd(vb(x)')
$
*纵向或非旋转(Longitudinal or Irrotational)电流，$vb(J)_l$*
$
curl vb(J)_l = 0\
1/c^2 grad pdv(Phi,t) = mu_0 vb(J)_l
$
*横向或螺线管(Transverse or Solenoidal)电流，$vb(J)_t$*
$
div vb(J)_t = 0\
laplacian vb(A) - 1/c^2 pdv(vb(A),t,2)  = - mu_0 vb(J)_t
$
这是因为
$
div vb(J) + pdv(rho,t) = 0\
div (vb(J)_l + vb(J)_t) - epsilon_0 pdv(laplacian Phi,t) = 0\
div vb(J)_l - div grad epsilon_0 pdv(Phi,t) = 0\
div (vb(J)_l - epsilon_0 grad pdv(Phi,t)) = 0\
div (mu_0 vb(J)_l - 1/c^2 grad pdv(Phi,t)) = 0
$

=== Transverse /Radiation Gauge

标量势方程的源由纵向电流表示
$
1/c^2 grad pdv(Phi,t) = mu_0 vb(J)_l
$
矢量势的波方程源完全可以用横向电流来表示。
$
laplacian vb(A) - 1/c^2 pdv(vb(A),t,2)  = - mu_0 vb(J)_t
$
横向辐射场仅由矢量势给出，瞬时库仑势只对近场有贡献。

如果没有信号源 $rho = 0$ 和 $vb(J) = 0$，那么$Phi=0$，且$vb(A)$满足均质方程
$
laplacian vb(A) - 1/c^2 pdv(vb(A),t,2)  = 0
$

标量势在空间各处*瞬时传播*；而矢量势则*满足波动方程*，以$c$的速度传播。

=== Properties of $J_l$ and $J_t$

$
vb(J)_l (vb(x),t) = -1/(4pi) grad integral (div' vb(J)(vb(x)',t))/abs(vb(x) - vb(x)') dd(x',3)\
vb(J)_t (vb(x),t) = 1/(4pi) curl curl integral (vb(J)(vb(x)',t))/abs(vb(x) - vb(x)') dd(x',3)
$
有
$
vb(J)_t (vb(x),t) &= 1/(4pi) curl curl integral (vb(J)(vb(x)',t))/abs(vb(x) - vb(x)') dd(x',3)\
&= 1/(4pi) grad integral vb(J)(vb(x)',t) dot  grad (1/abs(vb(x) - vb(x)')) dd(x',3) -1/(4pi) vb(J)(vb(x)',t) laplacian (1/abs(vb(x) - vb(x)')) dd(x',3)\
&= - 1/(4pi) grad integral vb(J)(vb(x)',t) dot grad' (1/abs(vb(x) - vb(x)')) dd(x',3) + integral vb(J)(vb(x)',t) delta(vb(x) - vb(x)') dd(x',3)\
&= - 1/(4pi) grad integral div' (vb(J)(vb(x)',t)) /abs(vb(x) - vb(x)') dd(x',3) + 1/(4pi) grad integral (div' vb(J)(vb(x)',t))/abs(vb(x) - vb(x)') dd(x',3) + vb(J)(vb(x),t)\
&= vb(J)(vb(x),t) + 1/(4pi) grad integral (div' vb(J)(vb(x)',t))/abs(vb(x) - vb(x)') dd(x',3)\
&= vb(J)(vb(x),t) - vb(J)_l (vb(x),t)
$

#problem[

Gauge transformation: The scalar and vector potential are as following,
$
Phi(vb(r), t) = 0\
vb(A)(vb(r), t) = - 1/(4pi epsilon_0) (q t)/r^2 vu(r)
$
using the gauge function to transfer the above potentials.
$
Lambda = - 1/(4pi epsilon_0) (q t)/r
$
]

#solution[

#figure(
  image("pic/2024-11-29-12-11-50.png", width: 90%),
  numbering: none,
)
]

#problem[

*Plane electromagnetic waves*: Electric and Magnetic Fields without Sources

]

#solution[

$
laplacian Phi = - rho/epsilon_0\
laplacian vb(A) - 1/c^2 pdv(vb(A),t,2)  = - mu_0 vb(J) + 1/c^2 grad pdv(Phi,t)
$
电磁波中有
$
rho = 0 , vb(J) = 0\
$
从而
$
laplacian Phi = 0\
laplacian vb(A) - 1/c^2 pdv(vb(A),t,2)  = 0
$
而
$
eval(Phi)_oo = 0
$
就有
$
Phi(vb(r), t) = 0\
$
而$vb(A)$满足波动方程
$
laplacian vb(A) - 1/c^2 pdv(vb(A),t,2)  = 0\
vb(A) = vb(A)_0 e^(i(vb(k) dot vb(x) - omega t))
$
由于Maxwell
$
vb(B) = curl vb(A)\
vb(E) = - grad Phi - pdv(vb(A),t)
$
解得
$
vb(B) = i vb(k) times vb(A)\
vb(E) = i omega vb(A)
$

#figure(
  image("pic/2024-11-29-14-59-27.png", width: 20%),
  numbering: none,
)

]

== Green Function for the Wave Equation

Green 函数
$
laplacian' G(vb(x),vb(x)') = - 4 pi delta(vb(x) - vb(x)')\
G(vb(x),vb(x)') = 1/abs(vb(x) - vb(x)') + F(vb(x),vb(x)')\
laplacian' F(vb(x),vb(x)') = 0
$

=== Wave Equations

Lorenz condition
$
div vb(A) + 1/c^2 pdv(Phi,t) = 0\
$
有
$
laplacian Phi - 1/c^2 pdv(Phi,t,2) = - rho/epsilon_0\
laplacian vb(A) - 1/c^2 pdv(vb(A),t,2)  = - mu_0 vb(J)
$
Coulomb Gauge
$
div vb(A) = 0\
$
有
$
laplacian vb(A) - 1/c^2 pdv(vb(A),t,2)  = - mu_0 vb(J)_t\
1/c^2 grad pdv(Phi,t) = mu_0 vb(J)_l\
laplacian Phi = - rho/epsilon_0\
$
非均质Helmholtz波动方程，椭圆偏微分方程
$
(laplacian + k^2) Psi(vb(x), omega) = - 4 pi f(vb(x), omega)
$
待求解波方程的基本结构，$f(x,t)$为已知源分布
$
laplacian Psi - 1/c^2 pdv(Psi,t,2) = - 4 pi f(vb(x),t)
$
考虑Fourier Inverse Transform
$
Psi(vb(x), omega) = integral Psi(vb(x), t) e^(i omega t) dd(t)\
f(vb(x), omega) = integral f(vb(x), t) e^(i omega t) dd(t)
$

=== Time-dependent infinite-space Green function for wave equations

时域下：
$
(laplacian - 1/c^2 pdv(,t,2)) G^((plus.minus)) (vb(x),t;vb(x)',t') = - 4 pi delta(vb(x) - vb(x)') delta(t - t')\
$
注意到
$
f(vb(x),t) = - 4pi delta(vb(x) - vb(x)') delta(t - t')\
f(vb(x), omega) = - 4pi integral delta(vb(x) - vb(x)') delta(t - t') e^(i omega t) dd(t) = - 4pi e^(i omega t') delta(vb(x) - vb(x)')\
Psi(vb(x), omega) = integral Psi(vb(x), t) e^(i omega t) dd(t)\
$
做逆变换
$
(laplacian + k^2) G(vb(x),omega;vb(x)',t') = - 4 pi delta(vb(x) - vb(x)') e^(i omega t')\
$
就有
$
G(vb(x),omega;vb(x)',t') = G_k (R) e^(i omega t')\
$
其中，$G_k (R)$是 Helmholtz 方程的无限空间格林函数：
$
(laplacian + k^2) Psi(vb(x), omega) = 0\
(laplacian + k^2) G_k (vb(x), omega, vb(x)') = - 4 pi delta(vb(x) - vb(x)')\
$
在没有边界的自由空间中，$G_k$关于$vb(r)'$对称
$
laplacian G_k (R) = 1/R dv(,R,2) (R G_k)\
1/R dv(,R,2) (R G_k) + k^2 G_k = - 4 pi delta(vb(R))
$
其中
$
vb(R) = vb(x) - vb(x)'
$
$G_k (vb(x), omega, vb(x)')$只依赖于$R = abs(vb(x) - vb(x)')$。

$R$不在0附近
$
1/R dv(,R,2) (R G_k) + k^2 G_k = 0 => R G_k = A e^(i k R) + B e^(-i k R)
$
$R->0$有
$
laplacian G_k = 1/R dv(,R,2) (R G_k) = - 4 pi delta(vb(R))
$
非均质微分方程的特解
$
lim_(k R->0) G_k (R) = 1/(R)
$
所以通解为
$
G_k (R) = A G^+_k (R) + B G^-_k (R)\
G^((plus.minus))_k (R) = e^(plus.minus i k R)/(R)
$
并且有条件
$
R G_k = A + B = 1\
$

=== Diverging and converging spherical wave

Diverging spherical wave
$
G^+_k (R) = e^(i k R)/(R)
$
Converging spherical wave
$
G^-_k (R) = e^(-i k R)/(R)
$

=== Time dependent Green Function

$
(laplacian - 1/c^2 pdv(,t,2)) G^((plus.minus)) (vb(x),t;vb(x)',t') = - 4 pi delta(vb(x) - vb(x)') delta(t - t')\
(laplacian + k^2) G^((plus.minus)) (vb(x),omega;vb(x)',t') = - 4 pi delta(vb(x) - vb(x)') e^(i omega t')\
G(vb(x),omega;vb(x)',t') = G_k (R) e^(i omega t') = e^(plus.minus i k R)/R e^(i omega t')
$

=== Retarded and Advanced Green Function

$
G(vb(x), t; vb(x)', t') = G(vb(R), tau) = 1/(2 pi) integral_(-oo)^oo e^(plus.minus i k R)/R e^(i omega t') e^(- i omega ) dd(omega) = 1/(2 pi) integral_(-oo)^oo e^(plus.minus i k R)/R e^(- i omega tau) dd(omega)
$
其中，
$
R = x - x'; tau = t - t'
$
用于非分散介质：$c$与频率无关。
$
G(vb(x), t; vb(x)', t') &= 1/(2 pi) integral_(-oo)^oo e^(plus.minus i k R)/R e^(- i omega tau) dd(omega)\
&= 1/R 1/(2 pi) integral_(-oo)^oo e^(plus.minus i omega/c R) e^(- i omega tau) dd(omega)\
&= 1/R 1/(2 pi) integral_(-oo)^oo e^(- i omega (tau minus.plus R/c)) dd(omega)\
&= 1/R delta(- tau plus.minus R/c)
$
从而
$
G(vb(x), t; vb(x)', t') = delta(t' - (t minus.plus abs(vb(x) - vb(x)')/c))/abs(vb(x) - vb(x)')
$
- Retarded Green Function 推迟
    $
    G(vb(x), t; vb(x)', t')^+ = delta(t' - (t - abs(vb(x) - vb(x)')/c))/abs(vb(x) - vb(x)')
    $
    信号在 $vb(x)'$ 处产生，需要 $R/c$ 周期才能到达 $vb(x)$。然后它继续前进，并在无限远处消失。
- Advanced Green Function 提前
    $
    G(vb(x), t; vb(x)', t')^- = delta(t' - (t + abs(vb(x) - vb(x)')/c))/abs(vb(x) - vb(x)')
    $
    信在无限远处产生的信号，经过 $vb(x)$ 时，需要再经过一个 $R/c$ 周期才能达到 $vb(x)'$，然后在 $vb(x)'$ 处消失。
=== Complete solution of the wave equation

$
laplacian Psi - 1/c^2 pdv(Psi,t,2) = - 4 pi f(vb(x),t)\
$
上述波动方程的积分特解：
$
Psi^((plus.minus)) (vb(x),t) = integral.double G^((plus.minus)) (vb(x),t;vb(x)',t') f(vb(x)',t') dd(vb(x)') dd(t')\
(laplacian - 1/c^2 pdv(,t,2))  G^((plus.minus)) (vb(x),t;vb(x)',t') = - 4pi delta(vb(x) - vb(x)') delta(t - t')\
$
源分布在时间和空间上都是局部的：有两种情况，一种是根本没有波源；一种是存在满足均相波方程的波$Psi(vb(x),t)$
$
laplacian Psi - 1/c^2 pdv(Psi,t,2) = 0\
$
- $t -> -oo$，$Psi = Psi_"in"$，“Background”
- $t -> oo$，$Psi = Psi_"out"$，“Steady-state”

#figure(
  image("pic/2024-12-04-01-02-00.png", width: 40%),
  numbering: none,
)

波方程的两个等效完整解
$
Psi(vb(x),t) = Psi_"in" (vb(x),t)+ integral.double G^((plus)) (vb(x),t;vb(x)',t') f(vb(x)',t') dd(vb(x)') dd(t')\
Psi(vb(x),t) = Psi_"out" (vb(x),t)+ integral.double G^((minus)) (vb(x),t;vb(x)',t') f(vb(x)',t') dd(vb(x)') dd(t')
$
最常见的物理状况$Psi_"in" = 0$
$
G^((+)) (vb(x),t;vb(x)',t') = delta(t - (t' - abs(vb(x) - vb(x)')/c))/abs(vb(x) - vb(x)')
$
$
Psi(vb(x),t) &= integral.double G^((+)) (vb(x),t;vb(x)',t') f(vb(x)',t') dd(vb(x)') dd(t')\
&= integral.double delta(t - (t' - abs(vb(x) - vb(x)')/c))/abs(vb(x) - vb(x)') f(vb(x)',t') dd(vb(x)') dd(t')\
&= integral f(vb(x)',t - abs(vb(x) - vb(x)')/c)/abs(vb(x) - vb(x)') dd(vb(x)')\
&= integral [f(vb(x)', t')]_"ret"/abs(vb(x) - vb(x)') dd(vb(x)')
$
所有对波动方程
$
laplacian Psi - 1/c^2 pdv(Psi,t,2) = - 4 pi f(vb(x),t)
$
有解
$
Psi(vb(x),t) = integral [f(vb(x)', t')]_"ret"/abs(vb(x) - vb(x)') dd(vb(x)')
$
其中$[]]_"ret"$是推迟函数意味着$t' = t - abs(vb(x) - vb(x)')/c$。

== Retarded Solutions for the Fields

如果电荷密度和电流密度分布随时间变化，观测点上的电磁场和电势将发生滞后。

=== Retarded Potentials

$
laplacian Phi - 1/c^2 pdv(Phi,t,2) = - rho/epsilon_0\
laplacian vb(A) - 1/c^2 pdv(vb(A),t,2)  = - mu_0 vb(J)
$
解得
$
Phi(vb(x),t) = 1/(4 pi epsilon_0) integral [rho(vb(x)',t')]_"ret"/abs(vb(x) - vb(x)') dd(vb(x)')\
vb(A)(vb(x),t) = mu_0/(4 pi) integral [vb(J)(vb(x)',t')]_"ret"/abs(vb(x) - vb(x)') dd(vb(x)')
$

=== Fields from Static to Retarded

场可以从上述电势中导出，也可以从波方程的推迟积分解中获得。

$
vb(E) = - grad Phi - pdv(vb(A),t)\
vb(B) = curl vb(A)
$

=== Retarded Solutions for the Electric and Magnetic Fields

==== Electric Field
$
vb(E) = - grad Phi - pdv(vb(A),t)\
$
这里要利用
$
curl curl vb(a) = grad div vb(a) - laplacian vb(a)\
vb(a) = grad Phi\
grad(laplacian Phi) = laplacian grad Phi\
$
于是
$
laplacian Phi - 1/c^2 pdv(Phi,t,2) = - rho/epsilon_0\
- grad (laplacian Phi - 1/c^2 pdv(Phi,t,2)) = grad (rho/epsilon_0)\
laplacian (- grad Phi) - 1/c^2 pdv((- grad Phi),t,2) = -( grad rho)/epsilon_0\
$
而
$
laplacian vb(A) - 1/c^2 pdv(vb(A),t,2)  = - mu_0 vb(J)\
laplacian (pdv(vb(A), t)) - 1/c^2 pdv(,t,2)pdv(vb(A), t) = - mu_0 pdv(vb(J),t)
$
从而
$
laplacian (- grad Phi - pdv(vb(A),t)) - 1/c^2 pdv((- grad Phi - pdv(vb(A),t)),t,2) = - (( grad rho)/epsilon_0 - mu_0 pdv(vb(J),t))
$
从而
$
laplacian vb(E) - 1/c^2 pdv(vb(E),t,2) = -1/epsilon_0 (- grad rho - 1/c^2 pdv(vb(J),t))
$
从而
$
vb(E) = 1/(4 pi epsilon_0) integral  [- grad' rho - 1/c^2 pdv(vb(J),t')]_"ret"/abs(vb(x) - vb(x)') dd(vb(x)')
$

==== Magnetic Field

$
vb(B) = curl vb(A)\
$
这里要利用
$
curl curl vb(a) = grad div vb(a) - laplacian vb(a)\
vb(a) = curl vb(A)\
curl (laplacian vb(A))= laplacian (curl vb(A))\
$
于是
$
laplacian vb(A) - 1/c^2 pdv(vb(A),t,2)  = - mu_0 vb(J)\
curl (laplacian vb(A) - 1/c^2 pdv(vb(A),t,2)) =- mu_0 curl vb(J)\
laplacian (curl vb(A)) - 1/c^2 pdv((curl vb(A)),t,2) = - mu_0 curl vb(J)\
$
即
$
laplacian vb(B) - 1/c^2 pdv(vb(B),t,2) = - mu_0 curl vb(J)
$
从而
$
vb(B) = mu_0/(4 pi) integral [curl' vb(J)(vb(x)',t')]_"ret"/abs(vb(x) - vb(x)') dd(vb(x)')
$

=== Jefimenko’s Generalizations of the Coulomb and Biot-Savart Laws

刚才得到了
$
vb(E) = 1/(4 pi epsilon_0) integral  [- grad' rho - 1/c^2 pdv(vb(J),t')]_"ret"/abs(vb(x) - vb(x)') dd(vb(x)')\
vb(B) = mu_0/(4 pi) integral [curl' vb(J)(vb(x)',t')]_"ret"/abs(vb(x) - vb(x)') dd(vb(x)')
$
有
$
grad' [rho]_"ret" = [grad' rho]_"ret" + [pdv(rho,t')]_"ret" grad't'\
curl' [vb(J)]_"ret" = [curl' vb(J)]_"ret" +  bold(nabla)'t' times [pdv(vb(J),t')]_"ret"
$
注意到
$
grad't' = grad' (t - abs(vb(x) - vb(x)')/c) = 1/c (vb(x) - vb(x)')/abs(vb(x) - vb(x)') = vu(R)/c\
$
从而
$
vb(E)(vb(x),t) &= 1/(4 pi epsilon_0) integral dd(vb(x)') 1/R [ - grad' rho - 1/c^2 pdv(vb(J),t')]_"ret"\
&= - 1/(4 pi epsilon_0) integral dd(vb(x)') (1/R [grad' rho]_"ret" + 1/(R c^2) [pdv(vb(J),t')]_"ret")\
&= - 1/(4 pi epsilon_0) integral dd(vb(x)') (1/R (grad' [rho]_"ret" - vu(R)/c [pdv(rho,t')]_"ret") + 1/(R c^2) [pdv(vb(J),t')]_"ret")\
&= 1/(4 pi epsilon_0) integral dd(vb(x)') (vu(R)/R^2 [rho(vb(x)',t')]_"ret" + vu(R)/(R c) [pdv(rho(vb(x)',t'),t')]_"ret" - 1/(R c^2) [pdv(vb(J)(vb(x)',t'),t')]_"ret")\
$
$
vb(B)(vb(x),t) = mu_0/(4pi) integral dd(vb(x)') ([vb(J)(vb(x)',t')]_"ret" times vu(R)/R^2 + [pdv(vb(J)(vb(x)',t'),t')]_"ret" times vu(R)/(R c))
$
如果电荷密度和电流密度与时间无关，就退化成静电场和静磁场
$
vb(E)(vb(x),t) = 1/(4 pi epsilon_0) integral dd(vb(x)') (vb(x) - vb(x)')/abs(vb(x) - vb(x)')^3 rho(vb(x)')\
vb(B)(vb(x),t) = mu_0/(4pi) integral dd(vb(x)') vb(J)(vb(x)') times (vb(x) - vb(x)')/abs(vb(x) - vb(x)')^3
$

#problem[Potential Produced by One Point charge

One point charge, located at the origin, has a time-dependent charge of $Q(t)$. Calculate the distribution of the radiating potential.

]

#figure(
  image("pic/2024-12-05-21-52-47.png", width: 30%),
  numbering: none,
)

#solution[

The charge density can be written as:
$
rho(vb(x)',t') = Q(t') delta(vb(x)')
$
The retarded potential is
$
Phi(vb(x),t) &= 1/(4 pi epsilon_0) integral [rho(vb(x)',t')]_"ret"/abs(vb(x) - vb(x)') dd(vb(x)')\
&= 1/(4 pi epsilon_0) integral [Q(t') delta(vb(x)')]_"ret"/abs(vb(x) - vb(x)') dd(vb(x)')\
&= 1/(4 pi epsilon_0) Q(t - abs(vb(r))/c)/abs(vb(r))
$
If the location of the point charge is $vb(x)' != 0$
$
rho(vb(x)',t') = Q(t') delta(vb(x)' - vb(x)'_0)
$
$
Phi(vb(x),t) &= 1/(4 pi epsilon_0) integral [rho(vb(x)',t')]_"ret"/abs(vb(x) - vb(x)') dd(vb(x)') = 1/(4 pi epsilon_0) Q(t - abs(vb(x) - vb(x)'_0)/c)/abs(vb(x) - vb(x)'_0)
$
]

#problem[Field Produced by One Wire with Current

Find the electric and magnetic fields produced by one infinite straight wire which carries the current
$
I(t) = cases(
  0 & "for" t <= 0,
  I_0 & "for" t > 0
)
$
]

#figure(
  image("pic/2024-12-05-21-53-13.png", width: 30%),
  numbering: none,
)

#solution[

电线可能是电中性的，因此标量电势为零$Phi = 0$
$
vb(J)(vb(x)',t') = I(t') delta(x') delta(y') vu(z)
$
让导线沿着 Z 轴运动。 P 点的推迟势为
$
vb(A) = mu_0/(4pi) integral [vb(J)(vb(x)',t')]_"ret"/abs(vb(x) - vb(x)') dd(vb(x)') = mu_0/(4pi) vu(z) integral_(-oo)^oo I(t - R/c)/R dd(vb(x)')
$
- $t<R/c$ 时，$vb(A)=0$
- $t>R/c$ 时，只有该部分做出了贡献
  $
  abs(z) <= sqrt((c t)^2 - rho^2)
  $
  $
  vb(A)(vb(r),t) = (mu_0 I_0)/(4pi) 2 vu(z) integral_0^(sqrt((c t)^2 - rho^2)) dd(z)/sqrt(rho^2 + z^2) = (mu_0 I_0)/(2pi) ln((sqrt((c t)^2 - rho^2) + c t)/rho) vu(z)
  $
从而电场和磁场为
$
vb(E) = - grad Phi - pdv(vb(A),t) = - (mu_0 I_0 c)/(2pi sqrt((c t)^2 - rho^2)) vu(z)\
vb(A) = curl vb(A) = - pdv(A_z,rho) vu(phi) = - (mu_0 I_0 c t)/(2pi rho sqrt((c t)^2 - rho^2)) vu(phi)
$
当$t->oo$时，稳定在
$
vb(E) = 0, vb(B) = (mu_0 I_0)/(2pi rho) vu(phi)
$
#figure(
  image("pic/2024-12-05-23-01-43.png", width: 30%),
  numbering: none,
)
]

== Derivation of the Equations of Macroscopic Electromagnetism

Maxwell Equations:
$
&div vb(D) = rho\
&div vb(B) = 0\
&curl vb(H) = vb(J) + pdv(vb(D),t)\
&curl vb(E) + pdv(vb(B),t) = 0
$
Boundary Conditions:
$
&vb(n) dot (vb(D)_2 - vb(D)_1) = sigma\
&vb(n) dot (vb(B)_2 - vb(B)_1) = 0\
&vb(n) times (vb(E)_2 - vb(E)_1) = 0\
&vb(n) times (vb(H)_2 - vb(H)_1) = vb(K)
$
Vector and Scalar Potentials:
$
&vb(E) = - grad Phi - pdv(vb(A),t)\
&vb(B) = curl vb(A)
$

=== The relationship between $vb(B)\&vb(H)$, $vb(D)\&vb(E)$

- Free Space:
$
vb(D) = epsilon_0 vb(E)\
vb(B) = mu_0 vb(H)\
c^2 = 1/(epsilon_0 mu_0)
$
- Ponderable Media:
$
vb(D) = epsilon vb(E) + vb(P)\
vb(H) = 1/mu_0 vb(B) - vb(M)
$
- Linear Media:
$
vb(D) = epsilon vb(E)\
vb(P) = chi_e epsilon_0 vb(E)\
vb(H) = 1/mu vb(B)\
$
- Non-linear Media:
$
vb(D) = vb(D)[vb(E)]\
vb(H) = vb(H)[vb(B)]
$


=== Microscopic Fields

$
div vb(b) = 0\
div vb(e) = eta/epsilon_0\
curl vb(e) + pdv(vb(b),t) = 0\
curl vb(b) - 1/c^2 pdv(vb(e),t) = mu_0 vb(j)
$

=== Average over Space

函数 $F(vb(x),t)$ 相对于测试函数 $f(vb(x))$ 的空间平均值定义如下：
$
expval(F(vb(x),t)) = integral F(vb(x)-vb(x)',t) f(vb(x)') dd(vb(x)')
$
测试函数 $f(x)$ 满足
- 实函数
- 在 $x=0$ 的某个邻域内非零
- 在所有空间上归一
- 非负
- 空间各向同性

==== space and time derivatives of the average of the function

$
pdv(,x_i) expval(F(vb(x),t)) = integral pdv(,x_i) F(vb(x)-vb(x)',t) f(vb(x)') dd(vb(x)') = expval(pdv(,x_i) F(vb(x),t))\
$
$
pdv(,t) expval(F(vb(x),t)) = expval(pdv(,t) F(vb(x),t))
$

因此，空间和时间微分运算与平均运算相通。

=== From Microscopic Equations to Macroscopic Equations

有
$
vb(E)(vb(x),t) = expval(vb(e)(vb(x),t))\
vb(B)(vb(x),t) = expval(vb(b)(vb(x),t))
$
从而有
$
div vb(B) = 0\
curl vb(E) + pdv(vb(B),t) = 0\
$
以及
$
epsilon_0 div vb(E) = expval(eta)\
1/mu_0 curl vb(B) - epsilon pdv(vb(E),t) = expval(vb(j))
$
派生场 $vb(D)$ 和 $vb(H)$ 是通过从 $expval(eta)$ 和 $expval(vb(j))$ 中提取某些贡献而引入的，这些贡献可与介质的体特性相识别。

==== $expval(eta(vb(x),t))$ and the macroscopic displacement vector $vb(D)$

$
eta(vb(x),t) &= eta_"free" + eta_"bound"\
&= sum_(j "(free)") q_j delta (vb(x) - vb(x)_j) + sum_(n "molecules") eta_n (vb(x),t) 
$
其中
$
eta_(n) &= sum_(j (n)) q_j delta (vb(x) - vb(x)_j)\
expval(eta_n (vb(x),t)) &= sum_(j (n)) q_j integral f(vb(x)') delta(vb(x) - vb(x)' - vb(x)_(j n) - vb(x)_n) dd(vb(x)')\
&= sum_(j (n)) q_j f(vb(x) - vb(x)_(j n) - vb(x)_n)\
&= sum_(j (n)) q_j (f(vb(x) - vb(x)_n) - vb(x)_(j n) dot grad f(vb(x) - vb(x)_n) + 1/2 sum_(alpha beta) (vb(x)_(j n))_alpha (vb(x)_(j n))_beta pdv(,x_alpha,x_beta) f(vb(x) - vb(x)_n) + ...)
$

#figure(
  image("pic/2024-12-06-11-36-34.png", width: 40%),
  numbering: none,
)
分子多极矩
$
q_n = sum_(j(n)) q_j\
vb(p)_n = sum_(j(n)) q_j vb(x)_(j n)\
(Q'_n)_(alpha beta) = 3 sum_(j(n)) q_j (vb(x)_(j n))_alpha (vb(x)_(j n))_beta
$
则有
$
expval(eta_n (vb(x),t)) &= q_n f(vb(x) - vb(x)_n) - vb(p)_n dot grad f(vb(x) - vb(x)_n) + 1/6 sum_(alpha beta) (Q'_n)_(alpha beta) pdv(,x_alpha,x_beta) f(vb(x) - vb(x)_n) + ...\
&= expval(q_n delta(vb(x) - vb(x)_n)) - div expval(vb(p)_n delta(vb(x) - vb(x)_n)) + 1/6 pdv(,x_alpha,x_beta) expval((Q'_n)_(alpha beta) delta(vb(x) - vb(x)_n)) + ...\
$
- 分子可被视为位于分子中一个固定点的点多极的集合；
- 在宏观现象中，分子电荷的详细分布被多极子的总和所取代。

$
eta(vb(x),t) &= sum_(j "(free)") q_j delta (vb(x) - vb(x)_j) + sum_(n "molecules") eta_n (vb(x),t)\
expval(eta_n (vb(x),t)) &= expval(q_n delta(vb(x) - vb(x)_n)) - div expval(vb(p)_n delta(vb(x) - vb(x)_n)) + 1/6 pdv(,x_alpha,x_beta) expval((Q'_n)_(alpha beta) delta(vb(x) - vb(x)_n)) + ...
$
有
$
expval(eta(vb(x),t)) = rho(vb(x),t) - div expval(vb(P)(vb(x),t)) + 1/6 pdv(,x_alpha,x_beta) expval(Q'_(n alpha beta)(vb(x),t))
$
其中
$
rho(vb(x),t) &= expval( sum_(j "(free)") q_j delta (vb(x) - vb(x)_j) + sum_(n "(molecules)") q_n delta(vb(x) - vb(x)_n)) & "Macroscopic charge density"\
vb(P)(vb(x),t) &= expval(sum_(n "(molecules)") vb(p)_n delta(vb(x) - vb(x)_n)) & "Macroscopic polarization"\
Q'_(n alpha beta)(vb(x),t) &= 1/6 expval(sum_(n "(molecules)") (Q'_n)_(alpha beta) delta(vb(x) - vb(x)_n)) & "Macroscopic quadrupole moment"
$
$
epsilon_0 div vb(E) = expval(eta)\
div vb(D) = rho\
$
从而有
$
D_alpha = epsilon_0 E_alpha + P_alpha - sum_beta pdv(D_(alpha beta),x_beta)\
$

==== $expval(vb(j)(vb(x),t))$ and the macroscopic current density $vb(H)$

$
1/mu_0 curl vb(B) - epsilon_0 pdv(vb(E),t) = expval(vb(j))
$
$
vb(j(vb(x),t)) = sum_(j "(free)") q_j vb(v)_j delta (vb(x) - vb(x)_j) +  vb(j)_n (vb(x),t)\
(1/mu_0 vb(B) - vb(H))_alpha = vb(M)_alpha + expval(sum_(n "(molecules)") (vb(p)_n times vb(v)_n)_alpha delta(vb(x) - vb(x)_n)) - 1/6 sum_(beta gamma delta) epsilon_(alpha beta gamma) pdv(,x_delta) expval((Q'_n)_(delta beta) (vb(v)_n)_gamma delta(vb(x) - vb(x)_n)) + ...
$
其中
$
vb(m)_n &= sum_(j(n)) q_j/2 (vb(x)_(j n) times vb(v)_(j n)) & "Molecular magnetic moment"\
vb(J)(vb(x),t) &= expval(sum_(j "(free)") q_j vb(v)_j delta (vb(x) - vb(x)_j) + sum_(n "(molecules)") q_n vb(v)_n delta(vb(x) - vb(x)_n))& "Macroscopic CurrentDensity"\
vb(M)(vb(x),t) &= expval(sum_(n "(molecules)") vb(m)_n delta(vb(x) - vb(x)_n)) & "Macroscopic magnetization"
$
假设介质整体具有平移速度 $v (<<c)$，并忽略分子的任何其他运动。

Minkowski运动介质电动力学的非相对论极限
$
1/mu_0 vb(B) - vb(H) = vb(M) + (vb(D) - epsilon_0 vb(E)) times v
$

== Poynting’s Theorem and Conservation of Energy and Momentum for a System of Charged Particles and Electromagnetic Fields

对于单个电荷 $q$，外部电磁场 $vb(E)$ 和 $vb(B)$ 做功的速率为：
$
q vb(v) dot vb(E)
$
对于电荷和电流的连续分布，在有限体积 $V$ 中，场做功的总速率为：
$
integral_V vb(J) dot vb(E) dd(vb(x))
$
功率表示电磁能转换为机械能或热能。
$
curl vb(H) = vb(J) + pdv(vb(D),t)\
integral_V vb(J) dot vb(E) dd(vb(x)) = integral_V (vb(E) times (curl vb(H)) - vb(E) dot pdv(vb(D),t) )dd(vb(x))\
$
其中
$
div(vb(E) times vb(H)) = vb(H) dot curl vb(E) - vb(E) dot curl vb(H)\
$
有
$
integral_V vb(J) dot vb(E) dd(vb(x)) = - integral_V (div(vb(E) times vb(H)) + vb(E) dot pdv(vb(D),t) + vb(H) dot pdv(vb(B),t)) dd(vb(x))\
$

=== The Poynting vector

假设
1. 宏观介质的电特性和磁特性是线性的，其色散或损耗可以忽略不计。
2. 总电磁能量密度由以下两个方程之和给出，即使对于时变场也是如此。
$
u = 1/2 (vb(E) dot vb(D) + vb(B) dot vb(H))\
$
则有
$
pdv(u,t) &= 1/2 (pdv(vb(E),t) dot vb(D) + vb(E) dot pdv(vb(D),t) + pdv(vb(B),t) dot vb(H) + vb(B) dot pdv(vb(H),t))\
&= vb(E) dot pdv(vb(D),t) + vb(H) dot pdv(vb(B),t)\
$
结合
$
integral_V (div(vb(E) times vb(H)) +pdv(u,t)) dd(vb(x)) = - integral_V vb(J) dot vb(E) dd(vb(x))\
$
就有微分形式
$
div vb(S) + pdv(u,t) = - vb(J) dot vb(E)
$
其中
$
vb(S) = vb(E) times vb(H)
$
是 Poynting 矢量，表示电磁场的能量流密度。

=== The Poynting Theorem

一定体积*内电磁能的时间变化率*，加上单位时间内*通过该体积边界表面流出的能量*，等于*该体积内场对源所做总功*的负值。

在体积 $V$ 内，能量守恒。

$
div vb(S) + pdv(u,t) + vb(J) dot vb(E) = 0\
$

#figure(
  image("pic/2024-12-06-15-50-51.png", width: 40%),
  numbering: none,
)

该方程仅适用于线性和非色散介质。

=== Energy Conservation

体积 $V$ 内的能量：
$
E = E_"mech" + E_"feild"\
$
即 $V$ 内粒子的总能量和电磁场的总能量。
$
dv(E_"mech",t) = integral_V vb(J) dot vb(E) dd(vb(x))\
dv(E_"field",t) = dv(,t) integral_V u dd(vb(x)) = 1/2 dv(,t) integral_V vb(E) dot vb(D) + vb(H) dot vb(B) dd(vb(x))\
$
$
dv(E,t)= dv(E_"mech",t) + dv(E_"field",t)
$
对于线性介质
$
dv(E,t) &= integral_V vb(J) dot vb(E) dd(vb(x)) + 1/2 dv(,t) integral_V vb(E) dot vb(D) + vb(H) dot vb(B) dd(vb(x))\
&= integral_V (curl vb(H) - pdv(vb(D),t)) dot vb(E) dd(vb(x)) + integral_V (vb(E) dot pdv(vb(D),t) + vb(H) dot pdv(vb(B),t)) dd(vb(x))\
&= integral_V div(vb(H) times vb(E)) dd(vb(x)) + integral_V vb(H) dot ( curl vb(E))  dd(vb(x)) + integral_V vb(H) dot pdv(vb(B),t) dd(vb(x))\
&= - integral_V div vb(S) dd(vb(x)) - integral_V vb(H) dot pdv(vb(B),t) dd(vb(x)) + integral_V vb(H) dot pdv(vb(B),t) dd(vb(x))\
&- integral.cont_S vb(S) dot vb(n) dd(a)\
$
从而有
$
dv(E,t) = - integral.cont_S vb(S) dot vb(n) dd(a)
$
在自由空间或源占用的体积小的条件下，$V$内粒子的总能量
$
E tilde E_"feild" = 1/2 integral_V (epsilon_0 vb(E)^2 + 1/mu_0 vb(B)^2) dd(vb(x))
$

#problem[Joule heating of a wire

Use the Poynting vector to calculate th1hye energy per unit time delivered to one wire, along which there is a current $I$ flows. The work on the wire will show up as Joule heating of the wire.

]

#figure(
  image("pic/2024-12-07-14-15-52.png", width: 30%),
  numbering: none,
)

#solution[

假设 $V$ 是两端的电位差， $L$ 是导线的长度。

假设电场 $E$ 是均匀的，且平行于导线：
$
E = V/L
$
磁场为圆周磁场，在表面（$r=a$）的磁场值为
$
B = (mu_0 I)/(2 pi a) 
$
从而，Poyniting 矢量的大小是
$
S = abs(vb(E) times vb(B)) = E B = (V I)/(2 pi a L)
$
Poynting 矢量沿着径向朝内。

能量每秒通过电线的通量为
$
integral vb(S) dot vb(n) dd(a) = S 2 pi a L = V I
$

]

=== Conservation of Linear Momentum

体积 $V$ 中所有粒子的动量之和记为$vb(P)_"mech"$
$
vb(F) = q(vb(E) + vb(v) times vb(B))
$
从而
$
dv(vb(P)_"mech",t) &= integral_V (rho vb(E) + vb(J) times vb(B)) dd(vb(x))\
&= integral_V (epsilon_0 (div vb(E)) vb(E) + (1/mu_0 curl vb(B) - epsilon_0 pdv(vb(E),t)) times vb(B)) dd(vb(x))\
&= epsilon_0 integral_V (vb(E) (div vb(E)) - c^2 vb(B) times (curl vb(B)) + vb(B) times pdv(vb(E),t)) dd(vb(x))\
&= epsilon_0 integral_V (vb(E) (div vb(E)) - c^2 vb(B) times (curl vb(B)) + vb(E) times pdv(vb(B),t) - pdv(,t)(vb(E) times vb(B))) dd(vb(x))\
&= epsilon_0 integral_V (vb(E) (div vb(E)) - c^2 vb(B) times (curl vb(B)) + vb(E) times (-curl vb(E)) - pdv(,t)(vb(E) times vb(B))) dd(vb(x))\
$
从而有
$
dv(vb(P)_"mech",t) + dv(,t) integral_V epsilon_0 (vb(E) times vb(B)) dd(vb(x)) =\
epsilon_0 integral_V (vb(E) (div vb(E)) - vb(E) times (curl vb(E)) + c^2 vb(B) (div vb(B)) - c^2 vb(B) times (curl vb(B))) dd(vb(x))\

$

==== electromagnetic momentum

体积 $V$ 中的总电磁动量用 $vb(P)_"field"$ 表示
$
vb(P)_"field" = epsilon_0 integral_V vb(E) times vb(B) dd(vb(x)) = 1/c^2 integral_V vb(S) dd(vb(x))
$
电磁场的动量密度为
$
vb(g) = 1/c^2 vb(S)
$
从而有
$
dv(vb(P)_"mech",t) + dv(vb(P)_"field",t) = epsilon_0 integral_V (vb(E) (div vb(E)) - vb(E) times (curl vb(E)) + c^2 vb(B) (div vb(B)) - c^2 vb(B) times (curl vb(B))) dd(vb(x))\
$
定义 Maxwell stress tensor
$
T_(alpha beta) = epsilon_0 (E_alpha E_beta + c^2 B_alpha B_beta - 1/2 (vb(E)^2 + c^2 vb(B)^2) delta_(alpha beta))
$
则有
$
dv(,t)(vb(P)_"mech" + vb(P)_"field")_alpha = sum_beta integral_V pdv(,x_beta) T_(alpha beta) dd(vb(x))
$
$
div vb(T)_alpha = sum_beta pdv(,x_beta) T_(alpha beta)\
integral_V div vb(T)_alpha dd(vb(x)) = integral.cont vb(T)_alpha dot vb(n) dd(a) = integral.cont sum_beta T_(alpha beta) n_beta dd(a)
$
从而有
$
dv(,t)(vb(P)_"mech" + vb(P)_"field")_alpha = integral.cont_S sum_beta T_(alpha beta) n_beta dd(a)
$

==== Conservation Law of Momentum

动量流过表面 $S$ 进入体积 $V$ 的 $𝛼$ 分量；或者说，流过表面 $S$ 并作用于体积 $V$ 内粒子和场的组合系统的力的 $𝛼$ 分量：
$
dv(,t)(vb(P)_"mech" + vb(P)_"field")_alpha = integral.cont_S sum_beta T_(alpha beta) n_beta dd(a)
$

#figure(
image("pic/2024-12-07-14-52-17.png", width: 40%),
  numbering: none,
)

该方程还可用于计算物质物体在电磁场中的作用力，方法是用边界面 $S$ 围住物体，并根据其右侧的电磁力相加得出总电磁力。


=== Conservation Law of Angular Momentum

扭矩
$
dd(vb(N)) = vb(x) times dd(vb(F))\
dd(vb(F)) = (rho vb(E) + vb(J) times vb(B)) dd(vb(x))\
$
从而有
$
vb(N) = integral_V vb(x) times (rho vb(E) + vb(J) times vb(B)) dd(vb(x))\
$
扭矩是角动量的导数
$
dv(vb(L),t) = vb(N), vb(L) = integral_V vb(l)_"mech" dd(vb(x))
$
其中$vb(l)_"mech"$是粒子的角动量密度。从而
$
dv(,t) integral_V vb(l)_"mech" dd(vb(x)) &= integral_V vb(x) times (vb(E)(div vb(E)) + (1/mu_0 curl vb(B) - epsilon_0 pdv(vb(E),t)) times vb(B)) dd(vb(x))\
&= integral_V vb(x) times (- epsilon_0 pdv(,t) (vb(E) times vb(B)) + epsilon_0 vb(E) times (div vb(E)) + epsilon_0 vb(E) times pdv(vb(B),t) - 1/mu_0 vb(B) times (curl vb(B))) dd(vb(x))\
$
定义电磁角动量密度
$
vb(l)_"field" = epsilon_0 mu_0 vb(x) times (vb(E) times vb(B)) = vb(x) times vb(s) = 1/c^2 vb(x) times vb(S)
$
- $vb(S)$是 Poynting 矢量，也是能量流密度
- $vb(s)$是动量流密度
- $vb(l)_"field"$是电磁角动量密度
$
dv(,t)(vb(l)_"mech" + vb(l)_"field") &= integral vb(x) times (epsilon_0 vb(E)(div vb(E)) - epsilon_0 vb(E) times (curl vb(E)) + 1/mu_0 vb(B) (div vb(B)) - 1/mu_0 vb(B) times (curl vb(B))) dd(vb(x))\
&= integral vb(x) times (sum_(alpha beta) pdv(,x_beta) T_(alpha beta) vu(e)_alpha )dd(vb(x))\
$
注意到，二阶张量$accent(vb(T), arrow.l.r)$的散度（这里的$arrow.l.r$仅仅表示$T$是一个二阶张量，而对于张量的微分运算见张量运算）
$
div accent(vb(T), arrow.l.r) = sum_p (vu(e)_p pdv(,x_p)) sum_(i,j) T_(i j) vu(e)_i vu(e)_j = sum_(p,i,j) pdv( T_(i j),x_p) (vu(e)_p dot vu(e)_i) vu(e)_j = sum_(i,j) pdv(T_(i j),x_i)  vu(e)_j = sum_j pdv(T_(i j),x_j) vu(e)_i
$
下证
$
vb(x) times (div accent(vb(T), arrow.l.r)) = - div (accent(vb(T), arrow.l.r) times vb(x))
$
$
- div (accent(vb(T), arrow.l.r) times vb(x)) &= - vu(e)_i dot pdv(,x_j)(accent(vb(T), arrow.l.r)times vb(x))\
&= - vu(e)_i dot (pdv(accent(vb(T), arrow.l.r),x_i) times vb(x) + accent(vb(T), arrow.l.r) times pdv(,x_i)(x_j vu(e)_j))\
&= - (div accent(vb(T), arrow.l.r)) times vb(x) - vu(e)_i dot (accent(vb(T), arrow.l.r) times vu(e)_i)\
$
其中
$
vu(e)_i dot (accent(vb(T), arrow.l.r) times vu(e)_i) &= (vu(e)_i dot (epsilon_0 E_j E_k + mu_0 H_j H_k - 1/2 delta_(j k) (epsilon_0 E^2 + mu_0 H^2))vu(e)_j vu(e)_k) times vu(e)_i\
&= (epsilon_0 E_i E_k + mu_0 H_i H_k - 1/2 delta_(i k) (epsilon_0 E^2 + mu_0 H^2)) vu(e)_k times vu(e)_i\
&= (epsilon_0 E_i E_k + mu_0 H_i H_k) vu(e)_k times vu(e)_i\
&= epsilon_0 (E_k vu(e)_k) times (E_i vu(e)_i) + mu_0 (H_k vu(e)_k) times (H_i vu(e)_i)\
&= epsilon_0 vb(E) times vb(E) + mu_0 vb(H) times vb(H)\
&=0
$
从而有
$
dv(,t)(vb(l)_"mech" + vb(l)_"field") = integral_V div (accent(vb(T), arrow.l.r) times vb(x)) dd(vb(x))\
$
记 Flux of angular momentum $accent(vb(M), arrow.l.r) = accent(vb(T), arrow.l.r) times vb(x)$，则有
$
dv(,t)(vb(l)_"mech" + vb(l)_"field") + div accent(vb(M), arrow.l.r) = 0
$

#figure(
  image("pic/2024-12-07-21-38-50.png", width: 100%),
  numbering: none,
)

== Poynting’s Theorem in Linear Dispersive Media with Losses

Poynting 定理
$
pdv(u,t) + div vb(S) + vb(J) dot vb(E) = 0\
vb(S) = vb(E) times vb(H)
$
对线性无色散或无损介质成立，这是因为
$
vb(D) epsilon = vb(E), vb(B) = mu vb(H)
$
成立，且$mu,epsilon$是实数并且不依赖于频率。这时就有
$
pdv(u,t) = vb(E) dot pdv(vb(D),t) + vb(H) dot pdv(vb(B),t)\
$
成立，这是 Poynting 定理成立的前提。

而对于线性色散或损失介质，这个前提不再成立。我们通过Fourier变换在频域中讨论这个问题。

$
vb(E) (vb(x),t) = integral_(-oo)^oo vb(E)(vb(x),omega) e^(- i omega t) dd(omega), 
vb(D) (vb(x),t) = integral_(-oo)^oo vb(D)(vb(x),omega) e^(- i omega t) dd(omega)\
$
结合
$
vb(D) (vb(x),t) = integral_(-oo)^oo epsilon(omega) vb(E)(vb(x),omega) e^(- i omega t) dd(omega)\
$
$
vb(E) dot pdv(vb(D),t) &= vb(E)^* dot pdv(vb(D),t) \
&= integral vb(E)^*(vb(x),omega') e^(i omega t') dd(omega') dot pdv(,t) integral epsilon(omega) vb(E)(vb(x),omega) e^(- i omega t) dd(omega)\
&= integral.double vb(E)^*(vb(x),omega')( - i omega epsilon(omega)) dot vb(E)(vb(x),omega) e^(-i (omega - omega') t) dd(omega) dd(omega')\
$
而
$
vb(E) dot pdv(vb(D),t) &= vb(E) dot pdv(vb(D)^*,t) \
&= integral.double vb(E)^*(vb(x),omega')(i omega' epsilon^*(omega')) dot vb(E)(vb(x),omega) e^(-i (omega - omega') t) dd(omega) dd(omega')\
$
可以得到
$
vb(E) dot pdv(vb(D),t) &= 1/2 integral.double vb(E)^*(vb(x),omega')(i omega' epsilon^*(omega') - i omega epsilon(omega)) dot vb(E)(vb(x),omega) e^(-i (omega - omega') t) dd(omega) dd(omega')\
$
Taylor展开有
$
(i omega' epsilon^*(omega') - i omega epsilon(omega)) = 2 omega Im(epsilon(omega)) - i(omega - omega') dv(,omega) (omega epsilon^*(omega)) + ...
$
从而有
$
vb(E) dot pdv(vb(D),t) &= 1/2 integral.double vb(E)^*(omega') dot vb(E)(omega) omega Im(epsilon(omega)) e^(-i(omega - omega') t) dd(omega) dd(omega') + pdv(,t) 1/2 integral.double vb(E)^*(omega') dot vb(E)(omega) dv(,omega) (omega epsilon^*(omega)) e^(-i(omega - omega') t) dd(omega) dd(omega')\
vb(H) dot pdv(vb(B),t) &= 1/2 integral.double vb(H)^*(omega') dot vb(H)(omega) omega Im(mu(omega)) e^(-i(omega - omega') t) dd(omega) dd(omega') + pdv(,t) 1/2 integral.double vb(H)^*(omega') dot vb(H)(omega) dv(,omega) (omega mu^*(omega)) e^(-i(omega - omega') t) dd(omega) dd(omega')\
$
假设
$
vb(E) = tilde(vb(E))(t) cos(omega_0 t + alpha)\
vb(H) = tilde(vb(H))(t) cos(omega_0 t + beta)
$
$tilde(vb(E))(t), tilde(vb(H))(t)$ 相对于 $1/omega$ 和 $epsilon(ω)$ 发生显著变化的频率范围的倒数都是缓慢变化的。

#figure(
  image("pic/2024-12-07-22-52-53.png", width: 80%),
  numbering: none,
)
从而
$
expval(vb(E) dot pdv(vb(D),t) + vb(H) dot pdv(vb(B),t)) \
= omega_0 Im(epsilon(omega_0)) expval(vb(E)(vb(x), t) dot vb(E)(vb(x), t)) + omega_0 Im(mu(omega_0)) expval(vb(H)(vb(x), t) dot vb(H)(vb(x), t)) + pdv(u_"eff",t)
$
载波频率周期的平均值
$
u_"eff" = 1/2 Re(dv(omega epsilon,omega) omega_0) expval(vb(E)(vb(x), t) dot vb(E)(vb(x), t)) + 1/2 Re(dv(omega mu,omega) omega_0) expval(vb(H)(vb(x), t) dot vb(H)(vb(x), t))
$

=== Poynting's Theorem in Linear Dissipative Media with Losses

$
integral_V vb(J) dot vb(E) dd(vb(x)) = - integral_V (div (vb(E) times vb(H)) + vb(E) dot pdv(vb(D),t) + vb(H) dot pdv(vb(B),t)) dd(vb(x))\
$
其中
$
expval(vb(E) dot pdv(vb(D),t) + vb(H) dot pdv(vb(B),t)) = omega_0 Im(epsilon(omega_0)) expval(vb(E)(vb(x), t) dot vb(E)(vb(x), t)) + omega_0 Im(mu(omega_0)) expval(vb(H)(vb(x), t) dot vb(H)(vb(x), t)) + pdv(u_"eff",t)\
u_"eff" = 1/2 Re(dv(omega epsilon,omega) omega_0) expval(vb(E)(vb(x), t) dot vb(E)(vb(x), t)) + 1/2 Re(dv(omega mu,omega) omega_0) expval(vb(H)(vb(x), t) dot vb(H)(vb(x), t))
$
则有
$
pdv(u_"eff",t) + div vb(S) \
= - vb(J) dot vb(E) - omega_0 Im(epsilon(omega_0)) expval(vb(E)(vb(x), t) dot vb(E)(vb(x), t)) - omega_0 Im(mu(omega_0)) expval(vb(H)(vb(x), t) dot vb(H)(vb(x), t))
$
第一项是 Ohm 损失，后面两项是介质中的吸收耗散、不包括传导损耗。

上式给出了实际情况下的局部电磁能量守恒，在这种情况下，除了能量流出局部（$div vb(S)$）外，还可能有介质加热造成的损失（$Im μ≠0,Im Ɛ≠0$），导致场中能量（假定）缓慢衰减。

== Poynting's Theorem for Harmonic Fields; Field Definitions of Impedance and Admittance

=== Harmonic Fields

$
vb(E)(vb(x),t) = Re(vb(E)(vb(x)) e^(-i omega t)) = 1/2 (vb(E)(vb(x)) e^(-i omega t) + vb(E)^*(vb(x)) e^(i omega t))\
$
其中，$vb(E)(x)$ 通常是复数，其大小和相位随位置而变化。
$
vb(J)(vb(x),t) dot vb(E)(vb(x),t) &= 1/4 (vb(J)(vb(x)) e^(-i omega t) + vb(J)^*(vb(x)) e^(i omega t)) dot (vb(E)(vb(x)) e^(-i omega t) + vb(E)^*(vb(x)) e^(i omega t))\
&= 1/4 (vb(J)(vb(x)) dot vb(E)(vb(x)) e^(-2 omega t) + vb(J)^*(vb(x)) dot vb(E)^*(vb(x)) e^(2 omega t) + vb(J)(vb(x)) dot vb(E)^*(vb(x)) + vb(J)^*(vb(x)) dot vb(E)(vb(x)))\
&= Re(vb(J)^*(vb(x)) dot vb(E)(vb(x)) + vb(J)(vb(x)) dot vb(E)(vb(x)) e^(-2 i omega t))\
$
体积 $V$ 中的场做功的时间平均率：
$
expval(dv(W,t)) = expval(integral_V vb(J) dot vb(E) dd(vb(x))) = 1/2 Re(integral_V vb(J)^* dot vb(E)dd(vb(x)))
$
Maxwell Equations for harmonic fields
$
&div vb(B) = 0\
&curl vb(E) - i omega vb(B) = 0\
&div vb(D) = rho\
&curl vb(H) + i omega vb(D) = vb(J)
$
其中$vb(E)(vb(x)), vb(D)(vb(x)), vb(H)(vb(x)), vb(B)(vb(x)), vb(J)(vb(x)), rho(vb(x))$关于$vb(x)$是复函数，不是关于$t$的。

$
1/2 integral_V vb(J)^* dot vb(E) dd(vb(x)) &= 1/2 integral_V (curl vb(H)^* - i omega vb(D)^*) dot vb(E) dd(vb(x))\
&= 1/2 integral_V (-div(vb(E) times vb(H)^*) - i omega (vb(E) dot vb(D)^* - vb(B) dot vb(H)^*)) dd(vb(x))\
$
可以定义复 Poynting 矢量
$
vb(S) = 1/2 vb(E) times vb(H)^*
$

=== Poynting’s Theorem for Harmonic Fields

$
1/2 integral_V vb(J)^* dot vb(E) dd(vb(x)) = - 1/2 integral_V (-div vb(S) - i omega (vb(E) dot vb(D)^* - vb(B) dot vb(H)^*)) dd(vb(x))\
$
$
w_e = 1/4 vb(E) dot vb(D)^* , w_m = 1/4 vb(B) dot vb(H)^*, vb(S) = 1/2 vb(E) times vb(H)^*
$
有Poynting定理
$
1/2 integral_V vb(J)^* dot vb(E) dd(vb(x)) + 2 i omega integral_V (w_e -w_m) dd(vb(x)) + integral.cont_S vb(S) dot vb(n) dd(a) = 0
$
实部表示时间平均量的能量守恒；虚部表示无功或储存能量及其交替流动。

如果能量密度 $w_e$ 和 $w_m$ 的体积积分为实数，如无损耗电介质和完美导体系统，则实数部分将为
$
integral_V 1/2 Re(vb(J)^* dot vb(E)) dd(vb(x)) + integral.cont_S Re(vb(S) dot vb(n)) dd(a) = 0
$
根据 $Re(vb(S))$ 的法向分量计算，场对 $V$ 中的源做功的稳态时均速率等于通过边界表面 $S$ 进入 $V$ 的平均功率流：由于系统部件的损耗，方程的第二项有一个实部，用于计算损耗。

#problem[Field Definitions of Impedance and Admittance

To define the input impedance of a general, twoterminal, linear, passive electromagnetic system, which is in volume $V$ surrounded by the boundary surface $S$, with only its input terminals protruding. The complex harmonic input current and voltage are $I_i$ and $V_i$.
]

#figure(
  image("pic/2024-12-08-00-02-04.png", width: 80%),
  numbering: none,
)
#solution[

复输入功率为
$
1/2 I_i^* V_i = - integral_S_i vb(S) dot vb(n) dd(a) = - integral.cont_S vb(S) dot vb(n) dd(a) + integral_(S-S_i) vb(S) dot vb(n) dd(a)
$
且有
$
1/2 I_i^* V_i = 1/2 integral_V vb(J)^* dot vb(E) dd(vb(x)) + 2 i omega integral_V (w_e - w_m) dd(vb(x)) + integral.cont_(S -S_i) vb(S) dot vb(n) dd(a)
$
假设The power flow out through $S$ is real.
$
R = Re(V_i/I_i) = 1/abs(I_i)^2 (Re integral_V vb(J)^* dot vb(E) dd(vb(x)) + 2integral.cont_(S -S_i) Re(vb(S) dot vb(n)) dd(a) + 4 omega Im integral_V (w_e - w_m) dd(vb(x)))\
X = - Im(V_i/I_i) = 1/abs(I_i)^2 (4 omega Re integral_V (w_e - w_m) dd(vb(x)) - Im integral_V vb(J)^* dot vb(E) dd(vb(x)))
$
低频今次：无辐射、储存的能量是实的
$
vb(J) = sigma vb(E)
$
有
$
R approx 1/abs(I_i)^2 integral_V sigma abs(vb(E))^2 dd(vb(x))\
X approx (4omega)/abs(I_i)^2 integral_V (w_e - w_m) dd(vb(x))
$
电抗$X$
- If magnetic stored energy dominates, $X>0$, Inductive $X=omega L$
- If electric stored energy dominates, $X<0$, Capacitive $X=-1/(omega C)$
]

== Transformation Properties of Fields and Sources

#figure(
  image("pic/2024-12-08-01-49-21.png", width: 80%),
  numbering: none,
)

#figure(
  image("pic/2024-12-08-01-50-22.png", width: 80%),
  numbering: none,
)