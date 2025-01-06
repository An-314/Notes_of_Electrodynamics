#import"@preview/physica:0.9.2":*
#import "template.typ": *

= Plane Electromagnetic Wave and Wave Propagation

== Plane Wave in a Nonconducting Medium

=== Maxwell Equations and Helmholtz Wave Equation

在没有源的情况下，无限介质中的 Maxwell 方程：
$
div vb(B) = 0, div vb(D) = 0, curl vb(E) + pdv(vb(B),t) = 0, curl vb(H) - pdv(vb(D),t) = 0
$
对均匀的、各向同性的、线性介质，有：
$
vb(D) = ε vb(E), vb(B) = μ vb(H)
$
进一步假设介质是无耗散的，即 $ε$ 和 $μ$ 是正实数。

如果是简谐时间依赖 $e^(-i omega t)$， Maxwell 方程变为：
$
div vb(B) = 0, div vb(D) = 0, curl vb(E) - i omega vb(B) = 0, curl vb(H) + i omega vb(D) = 0
$
进一步化简为
$
curl vb(E) - i omega vb(B) = 0, curl vb(H) + i omega epsilon mu vb(D) = 0
$
结合
$
curl (curl vb(E)) = grad (div vb(E)) - laplacian vb(E)
$
有波动方程
$
(laplacian + mu epsilon omega^2) mat(delim:"{" ,vb(E); vb(B)) = 0
$

=== Solution of Helmholtz Wave Equation

对于无耗散的介质，波动方程的解可以写成平面波的形式：
$
e^(i k x - i omega t)
$
其中 Wave number 波数和 frequency 频率:
$
k = omega sqrt(epsilon mu)
$
Phase velocity 相速度 和 Index of refraction折射率:
$
v = omega / k = 1 / sqrt(epsilon mu) = c / n
$
$
n = sqrt((epsilon mu)/(epsilon_0 mu_0))
$
The primordial solution:
$
u(x, t) = a e^(i (k x - omega t)) + b e^(-i (k x + omega t))
$
令 $omega = k v$ 的话
$
u_k (x, t) = a e^(i k (x - v t)) + b e^(-i k (x + v t))
$

=== Electromagnetic Plane Wave with Frequency $omega$ and Wave Vector $vb(k) = k vu(n)$

平面波可以写成
$
vb(E) (vb(x), t) = vb(cal(E)) e^(i vb(k) dot vb(x) - i omega t)\
vb(B) (vb(x), t) = vb(cal(B)) e^(i vb(k) dot vb(x) - i omega t)
$
其中 $vb(cal(E))$ ， $vb(cal(B))$ 和 $vu(n)$ 是常矢量。

=== Transverse Wave

$
div vb(E) = vb(cal(E)) dot e^(i vb(k) dot vb(x) - i omega t) = i k vu(n) dot vb(E)\
div vb(B) = vb(cal(B)) dot e^(i vb(k) dot vb(x) - i omega t) = i k vu(n) dot vb(B)
$
由此得到
$
vu(n) dot vb(E) = 0, vu(n) dot vb(B) = 0
$
另
$
curl vb(E) = grad e^(i vb(k) dot vb(x) - i omega t) times vb(cal(E)) = i k vb(n) times vb(E)\
curl vb(E) - i omega vb(B) = i k vb(n) times vb(E) - i omega vb(B) = 0
$
由此得到
$
c vb(B) = n vu(n) times vb(E)\
vb(H) = (vu(n) times vb(E)) / Z ,Z = sqrt(mu / epsilon)
$
其中 $Z$ 是 wave impedance 波阻抗。

*横波*： $vb(E)$ 和 $vb(B)$ 都垂直于传播方向 $vu(n)$。

#figure(
  image("pic/2024-12-08-18-32-57.png", width: 40%),
  numbering: none,
)


=== $vu(n)$为实矢量的情况

$
vb(E) = vb(cal(E)) e^(i vb(k) dot vb(x) - i omega t)\
vb(B) = vb(cal(B)) e^(i vb(k) dot vb(x) - i omega t)
$
则有
$
vb(cal(B)) = sqrt(epsilon mu) vu(n) times vb(cal(E))
$
从而$vb(cal(B))$和$vb(cal(E))$的相位相同。

$
vb(cal(B)) = vu(epsilon)_1 E_0, vb(cal(E)) = vu(epsilon)_2 sqrt(mu epsilon) E_0\
vb(cal(B)) = vu(epsilon)_2 E'_0, vb(cal(E)) = - vu(epsilon)_1 sqrt(mu epsilon) E'_0
$

#figure(
  image("pic/2024-12-08-18-49-48.png", width: 40%),
  numbering: none,
)

$E_0, E'_0$是常数，可能是复数。$(vu(epsilon)_1, vu(epsilon)_2, vu(n))$是正交单位矢量。

==== The Speed of Energy Flow

Poynting vector:
$
vb(S) = 1 / 2 vb(E) times vb(H)^*
$
The Energy Flow (energy per unit area per unit time)
$
vb(S) = 1/2 sqrt(epsilon / mu) abs(vb(E)_0)^2 vu(n)
$
The Time Averaged Energy Density
$
u = 1/4 (epsilon vb(E) dot vb(E)^* + mu vb(H) dot vb(H)^*)\
u = epsilon/2 abs(vb(E)_0)^2
$
能流速度、群速度 The Speed of Energy Flow
$
vb(S) = u vb(v) => 1/2 sqrt(epsilon / mu) abs(vb(E)_0)^2 vu(n) = epsilon/2 abs(vb(E)_0)^2 vb(v)\
v = 1 / sqrt(epsilon mu)
$
相速度 Phase velocity
$
v = omega / k = 1 / sqrt(epsilon mu) = c / n
$
对于横向平面波和实的$vu(n)$，相位速度与群速度相同。

=== $vu(n)$为复矢量的情况

$
vb(E) = vb(cal(E)) e^(i vb(k) dot vb(x) - i omega t)\
vb(B) = vb(cal(B)) e^(i vb(k) dot vb(x) - i omega t)
$
$
vu(n) = vb(n)_R + i vb(n)_I\
e^(i vb(k) dot vb(x) - i omega t) = e^(- k vb(n)_I dot vb(x)) e^(i k vb(n)_R dot vb(x) - i omega t)
$
其中
$
n_R^2 - n_I^2 = 1, vb(n)_R dot vb(n)_I = 0\
vb(n) = vu(e)_1 cosh theta + i vu(e)_2 sinh theta
$
其中$vu(e)_1, vu(e)_2, vu(e)_3$是$x,y,z$的单位矢量。
$
vu(n) dot vb(cal(E)) = 0
$
所以通解为
$
vb(cal(E)) = (i vu(e)_1 sinh theta - vu(e)_2 cosh theta) A + vu(e)_3 A'
$
- 对 $theta != 0$，$vb(cal(E))$有$vu(n)$方向的分量
- 对 $theta = 0$
  $
  vb(cal(E)) = vu(epsilon)_2 E'_0, vb(cal(B)) = - vu(epsilon)_1 sqrt(mu epsilon) E'_0
  $

1. 不均匀平面波：波在某个方向上呈指数增长或衰减。
2. 恒定振幅和恒定相位的表面仍然是平面，但不再平行。

#figure(
  image("pic/2024-12-08-19-28-06.png", width: 80%),
  numbering: none,
)

== Linear and Circular Polarization; Stokes Parameters

=== Linear Polarization

$
vb(E)_1 = vu(epsilon)_1 E_1 e^(i vb(k) dot vb(x) - i omega t)\
vb(E)_2 = vu(epsilon)_2 E_2 e^(i vb(k) dot vb(x) - i omega t)
$
对应的磁场为
$
vb(B)_j = sqrt(epsilon mu) (vb(k) times vb(E)_j)/k
$
将$vb(E)_1, vb(E)_2$合成为$vb(E)$
$
vb(E) = (vu(epsilon)_1 E_1 + vu(epsilon)_2 E_2) e^(i vb(k) dot vb(x) - i omega t)
$
一旦$E_1$和$E_2$同相位，这将一直是线偏振。
$
E = sqrt(E_1^2 + E_2^2)\
theta = tan^(-1) (E_2 / E_1)
$
如果$E_1$和$E_2$的相位不同，则波为椭圆偏振。一种特殊情况是圆极化，$E_1$和$E_2$的振幅相同，但相位相差 90°。

#figure(
  image("pic/2024-12-08-22-28-06.png", width: 30%),
  numbering: none,
)

=== Circular polarization

$
vb(E)_1 = vu(epsilon)_1 E_1 e^(i vb(k) dot vb(x) - i omega t)\
vb(E)_2 = vu(epsilon)_2 E_2 e^(i vb(k) dot vb(x) - i omega t)
$
其中
$
E_1 = E_0, E_2 = i E_0
$
对应的磁场为
$
vb(E)(vb(x),t) = E_0 (vu(epsilon)_1 plus.minus i vu(epsilon)_2) e^(i vb(k) dot vb(x) - i omega t)
$
轴的选择是为了让波在$z$方向传播，而$vu(𝜀)_1$和$vu(𝜀)_2$则在$x$和$y$方向。实际电场的分量（实部）：
$
E_x (vb(x), t) = E_0 cos (k z - omega t)\
E_y (vb(x), t) = minus.plus E_0 sin (k z - omega t)
$
- (-)counterclockwise: left circular, positive helicity
- (+)clockwise: right circular, negative helicity

#figure(
  image("pic/2024-12-08-22-41-14.png", width: 80%),
  numbering: none,
)

=== Another representation of linear and elliptical polarization

复正交单位向量
$
vu(epsilon)_plus.minus = 1/sqrt(2) (vu(epsilon)_1 plus.minus i vu(epsilon)_2)
$
有性质
$
vu(epsilon)_plus.minus^* dot vu(epsilon)_plus.minus = 1\
vu(epsilon)_plus.minus^* dot vu(epsilon)_minus.plus = 0\
vu(epsilon)_plus.minus^* dot vu(epsilon)_3 = 0
$
#figure(
  image("pic/2024-12-08-22-48-08.png", width: 30%),
  numbering: none,
)
Another general representation
$
vb(E)(vb(x), t) = (E_+ vu(epsilon)_+ + E_- vu(epsilon)_-) e^(i vb(k) dot vb(x) - i omega t)
$
1. 相位相同，幅度不同：椭圆极化
  $
  E_-/E_+ = r
  $
  长短轴之比为
  $
  (1+r)/(1-r)
  $
2. 不同相位，不同振幅：有$alpha/2$旋转角的椭圆极化
  $
  E_-/E_+ = r e^(i alpha)
  $
  #figure(
    image("pic/2024-12-09-01-05-23.png", width: 40%),
    numbering: none,
  )
3. 相同相位，相同振幅：线偏振
  $
  E_-/E_+ = r = plus.minus 1
  $
4. 不同相位，相同振幅：线偏振
  $
  E_-/E_+ = r = plus.minus e^(i alpha)
  $
  #figure(
    image("pic/2024-12-09-01-03-22.png", width: 20%),
    numbering: none,
  )
5. 其中一项是零：圆极化
  #figure(
    image("pic/2024-12-09-01-06-25.png", width: 20%),
    numbering: none,
  )

=== Stokes Parameters

我们如何通过观察光束的细节来确定偏振状态？Stokes参数是场强的二次方，只需与线偏振片和四分之一波片等效结合，通过强度测量即可确定。

通过 $vu(epsilon)_1 dot vb(E), vu(epsilon)_2 dot vb(E), vu(epsilon)_+^* dot vb(E), vu(epsilon)_-^* dot vb(E)$ 定义 Stokes 参数$s_0, s_1, s_2, s_3$：
$
E_1 = a_1 e^(i delta_1), E_2 = a_2 e^(i delta_2), E_+ = a_+ e^(i delta_+), E_- = a_- e^(i delta_-)
$
对完全偏振的情况：
$
s_0^2 = s_1^2 + s_2^2 + s_3^2\
$
以线性极化基为例$(vu(epsilon)_1, vu(epsilon)_2)$：
$
s_0 = abs(vu(epsilon)_1 dot vb(E))^2 + abs(vu(epsilon)_2 dot vb(E))^2 = a_1^2 + a_2^2\
s_1 = abs(vu(epsilon)_1 dot vb(E))^2 - abs(vu(epsilon)_2 dot vb(E))^2 = a_1^2 - a_2^2\
s_2 = 2 Re ((vu(epsilon)_1 dot vb(E))^* (vu(epsilon)_2 dot vb(E))) = 2 a_1 a_2 cos (delta_1 - delta_2)\
s_3 = 2 Im ((vu(epsilon)_1 dot vb(E))^* (vu(epsilon)_2 dot vb(E))) = 2 a_1 a_2 sin (delta_1 - delta_2)
$
就圆偏振基础而言$(vu(epsilon)_+, vu(epsilon)_-)$：
$
s_0 = abs(vu(epsilon)_+^* dot vb(E))^2 + abs(vu(epsilon)_-^* dot vb(E))^2 = a_+^2 + a_-^2\
s_1 = 2 Re((vu(epsilon)_+^* dot vb(E))^* (vu(epsilon)_-^* dot vb(E))) = 2 a_+ a_- cos (delta_- - delta_+)\
s_2 = 2 Im((vu(epsilon)_+^* dot vb(E))^* (vu(epsilon)_-^* dot vb(E))) = 2 a_+ a_- sin (delta_- - delta_+)\
s_3 = abs(vu(epsilon)_+^* dot vb(E))^2 - abs(vu(epsilon)_-^* dot vb(E))^2 = a_+^2 - a_-^2
$

=== Stokes Vector and the polarization

$
vb(S) = mat(s_0; s_1; s_2; s_3)
$

例如：
- Linearly polarized (horizontal) $mat(1;1;0;0)$
- Linearly polarized (vertical) $mat(1;-1;0;0)$
- Linearly polarized (45°) $mat(1;0;1;0)$
- Linearly polarized (-45°°) $mat(1;0;-1;0)$
- Right circularly polarized $mat(1;0;0;1)$
- Left circularly polarized $mat(1;0;0;-1)$
- Unpolarized $mat(1;0;0;0)$

偏振度
$
P = I_"ELP"/I_"TOT" = sqrt(s_1^2 + s_2^2 + s_3^2) / s_0 (0 <= P <= 1)
$
对于完全偏振，$P = 1$，对于完全不偏振，$P = 0$。

$
vb(S) = mat(s'_0; s'_1; s'_2; s'_3)_"PP" = (1-P) mat(s_0;0;0;0)_"UNP" + P mat(s_0; s_1; s_2; s_3)_"ELP"
$

=== Measurement of Stokes Parameters

$
I(theta,phi) = 1/2 (s_0 + s_1 cos 2 theta + s_2 sin 2 theta cos phi - s_3 sin 2 theta sin phi)
$
其中$theta$是线偏振角，$phi$波带片的相位。

#figure(
  image("pic/2024-12-09-02-31-00.png", width: 80%),
  numbering: none,
)

== Reflection and Refraction of Electromagnetic Waves at a Plane Interface Between Two Dielectrics 两个介质的平面界面上的电磁波的反射和折射

- 动理学特性：
  - 反射角等于入射角。
  - Snell 定律：$(sin i)/(sin r)=n'/n$，其中$i, r$为入射角和折射角，$n',n$为相应的折射率。
- 动力学特性：
  - 反射和折射辐射的强度。
  - 相变和偏振。

- 入射波 incident
$
vb(E) = vb(E)_0 e^(i vb(k) dot vb(x) - i omega t)\
vb(B) = sqrt(epsilon mu) (vb(k) times vb(E)) / k
$
- 折射波 refracted
$
vb(E)' = vb(E)'_0 e^(i vb(k)' dot vb(x) - i omega t)\
vb(B)' = sqrt(epsilon' mu') (vb(k)' times vb(E)') / k'
$
- 反射波 reflected
$
vb(E)'' = vb(E)''_0 e^(i vb(k)'' dot vb(x) - i omega t)\
vb(B)'' = sqrt(epsilon mu) (vb(k)'' times vb(E)'') / k''
$
波数
$
abs(vb(k)) = abs(vb(k)'') = k = omega sqrt(epsilon mu)\
abs(vb(k)') = k' = omega sqrt(epsilon' mu')\
$

=== Boundary condition at z=0, and Snell's Law

在 $z=0$ 时，所有场的空间和时间变化必须相同。
$
(vb(k) dot vb(x))_(z=0) = (vb(k)' dot vb(x))_(z=0) = (vb(k)'' dot vb(x))_(z=0)\
$
所有三个矢量必须位于一个平面内。 而且
$
k sin i = k' sin r = k'' sin r'
$
就有
$
k'' = k, i = r'
$
这样就得到了 Snell 定律
$
(sin i)/(sin r) = k'/k = sqrt((epsilon' mu')/(epsilon mu)) = n'/n
$

#figure(
  image("pic/2025-01-04-13-24-37.png", width: 70%),
  numbering: none,
)

=== Boundary condition at z=0, and the dynamic properties

$
(vb(D)_2 - vb(D)_1) dot vu(n) = sigma\
(vb(B)_2 - vb(B)_1) dot vu(n) = 0\
(vb(E)_2 - vb(E)_1) times vu(n) = 0\
(vb(H)_2 - vb(H)_1) times vu(n) = vb(K)
$
其中
$
vb(B)_j = sqrt(epsilon mu) (vb(k) times vb(E)_j) / k, j=1,2\
k = omega sqrt(epsilon mu)
$
对于表面电荷密度和电流密度均为零的情况，在$z=0$处，法向$vb(D), vb(E)$是连续的，而切向$vb(B), vb(H)$是连续的。
$
(epsilon(vb(E)_0 + vb(E)''_0) - epsilon' vb(E)'_0) dot vu(n) = 0\
(vb(k) times vb(E)_0 + vb(k)'' times vb(E)''_0 - vb(k)' times vb(E)'_0) dot vu(n) = 0\
(vb(E)_0 + vb(E)''_0 - vb(E)'_0) times vu(n) = 0\
(1/mu (vb(k) times vb(E)_0 + vb(k)'' times vb(E)''_0) - 1/mu' vb(k)' times vb(E)'_0) times vu(n) = 0
$
线性偏振：
- 两种情况：
  - 偏振矢量垂直于入射平面（$vb(k)$和$vb(n)$）
  - 偏振矢量平行于平面。
- 能量沿波矢量方向正向流动。

1. *垂直*
#figure(
  image("pic/2025-01-04-15-05-40.png", width: 60%),
  numbering: none,
)
注意到
$
(vb(k) times vb(E)_0) times vu(n) = - vu(n) times (vb(k) times vb(E)_0) = - ((vu(n) dot vb(E)_0) vb(k) - (vu(n) dot vb(k)) vb(E)_0) = k vb(E)_0 cos i\
(vb(k) times vb(E)_0) dot vu(n) = k E_0 sin i\
(vb(k)' times vb(E)'_0) dot vu(n) = k' E'_0 sin r\
(vb(k)'' times vb(E)''_0) dot vu(n) = k E''_0 sin r'
$
则有
$
E'_0/(E_0 + E''_0) = (sin i)/(sin r) k/k'
$
有 Snell 定律
$
sin r = n/n' sin i
$
另外，由最后两个式子可以得到
$
E_0 +E''_0 = E'_0\
sqrt(epsilon/mu)(E_0 - E''_0) cos i - sqrt(epsilon'/mu') E'_0 cos r = 0
$
就有 Fresnel 公式
$
E'_0/E_0 = (2 n cos i)/(n cos i + mu/mu' sqrt(n'^2 - n^2 sin^2 i))\
E''_0/E_0 = (n cos i - mu/mu' sqrt(n'^2 - n^2 sin^2 i))/(n cos i + mu/mu' sqrt(n'^2 - n^2 sin^2 i))
$

2. *平行*

$
(E_0 - E_0'') cos i = E'_0 cos r\
sqrt(epsilon/mu)(E_0 + E''_0) = sqrt(epsilon'/mu') E'_0\
$
就有 Fresnel 公式
$
E'_0/E_0 = (2 n n' cos i)/(mu/mu' n'^2 cos i + n sqrt(n'^2 - n^2 sin^2 i))\
E''_0/E_0 = (mu/mu' n'^2 cos i - n sqrt(n'^2 - n^2 sin^2 i))/(mu/mu' n'^2 cos i + n sqrt(n'^2 - n^2 sin^2 i))
$

== Polarization by Refraction, Total Internal Reflection; Goos-Haenchen Effect  折射、全反射的偏振；Goos-Haenchen效应

=== Brewster’s angle

对于平行于入射面的偏振，存在一个入射角，在这个角度上没有反射波。

由 Fresnel 公式
$
E'_0/E_0 = (2 n n' cos i)/(mu/mu' n'^2 cos i + n sqrt(n'^2 - n^2 sin^2 i))\
E''_0/E_0 = (mu/mu' n'^2 cos i - n sqrt(n'^2 - n^2 sin^2 i))/(mu/mu' n'^2 cos i + n sqrt(n'^2 - n^2 sin^2 i))
$
对于$mu/mu'=1$，没有反射波的条件是
$
n'^2 cos i = n sqrt(n'^2 - n^2 sin^2 i)
$
就可以得到 Brewster 角
$
i_B= tan^(-1) (n'/n)
$
#figure(
  image("pic/2025-01-04-15-26-38.png", width: 30%),
  numbering: none,
)

=== Total internal reflection 全反射

对于 $i=i_0$ 处入射的波，折射波平行于表面传播， $r =90degree$。
$
i_0 = sin^(-1) (n'/n)
$
对于 $i > i_0$
$
cos r = sqrt(1 - sin^2 r) = i sqrt(n^2/n'^2 sin^2 i - 1) = i sqrt( ((sin i)/(sin i_0))^2 - 1)
$
折射波的传播因子
$
e^(i vb(k)' dot vb(x)) = e^(i k' (x sin r + z cos r)) = e^(-k'sqrt( ((sin i)/(sin i_0))^2 - 1) z) e^(i k' ((sin i)/(sin i_0)) x)
$
折射波只平行于表面传播，在界面外呈指数衰减。

=== The time-averaged normal component of the Poynting vector just inside the surface

$
vb(S) dot vu(n) = 1/2 Re(vu(n) dot (vb(E)' times vb(H)'^*))\
$
其中
$
vb(H)' = (vb(k)' times vb(E)') / (omega mu')\
$
就有
$
vb(S) dot vu(n) = 1/(2 omega mu') Re((vu(n)dot vb(k)' abs(vb(E)'_0)^2))
$
而
$
vb(n) dot vb(k)' = k' cos r
$
是纯序数，所以
$
vb(S) dot vu(n) = 0
$
#figure(
  image("pic/2025-01-04-15-41-08.png", width: 80%),
  numbering: none,
)

=== Goos-Haenchen Effect

倏逝波衰减
$
e^(-z/delta) , delta^(-1) = k (sin^2 i - sin^2 i_0)^(1/2)
$
如果具有有限横向范围的辐射光束发生全内反射，那么相对于在边界反射的几何射线的预测值，反射光束会出现横向位移。

#figure(
  image("pic/2025-01-04-15-44-02.png", width: 30%),
  numbering: none,
)
线极化
$
D_perp = lambda/pi (sin i)/sqrt(sin^2 i - sin^2 i_0)\
D_parallel = D_perp (sin^2 i_0)/(sin^2 i - cos^2 i sin^2 i_0)
$
有近似
$
D approx 2 delta sin i
$
#figure(
  image("pic/2025-01-04-16-24-56.png", width: 40%),
  numbering: none,
)

=== Phase change of the reflected to the incidence one 反射波相位相对于入射波的变化

$
sqrt(n'^2 - n^2 sin^2 i) = n' cos r\
$
- 相变取决于入射角和 $n/n'$ 的比率。
- 相位变化可用于将一种偏振转换为另一种偏振。(菲涅尔菱形)。

#problem[
  Fresnel’s rhombus

  菲涅尔菱形由折射率为 n 的材料制成。将线性偏振平面波注入菱形体，并从菱形体的相邻边界进行全反射。该波从相反边界再次全反射后，将变成圆极化波。如果菱形外的折射因子为 n'，请求解入射角。
]

#solution[

  #figure(
    image("pic/2025-01-04-16-35-13.png", width: 80%),
    numbering: none,
  )

  #figure(
    image("pic/2025-01-04-16-38-10.png", width: 80%),
    numbering: none,
  )

  #figure(
    image("pic/2025-01-04-16-38-51.png", width: 80%),
    numbering: none,
  )

  #figure(
    image("pic/2025-01-04-16-39-21.png", width: 80%),
    numbering: none,
  )

  #figure(
    image("pic/2025-01-04-16-39-40.png", width: 80%),
    numbering: none,
  )

  #figure(
    image("pic/2025-01-04-16-40-01.png", width: 80%),
    numbering: none,
  )

  #figure(
    image("pic/2025-01-04-16-40-38.png", width: 80%),
    numbering: none,
  )
]

#figure(
  image("pic/2025-01-04-16-49-48.png", width: 100%),
  numbering: none,
)

== Frequency Dispersion Characteristics of Dielectrics, Conductors, and Plasmas 介质、导体和等离子体的频散特性

=== Dispersive 色散

#figure(
  image("pic/2025-01-04-16-56-05.png", width: 70%),
  numbering: none,
)

#figure(
  image("pic/2025-01-04-16-56-25.png", width: 30%),
  numbering: none,
)

- 所有介质都有一定的色散。
- 只有在有限的频率范围内，或者在真空中，传播速度才能被视为频率恒定。

==== Simple Model for $𝜀(𝜔)$

#figure(
  image("pic/2025-01-04-17-02-33.png", width: 50%),
  numbering: none,
)

$
vb(F) = dv(vb(P),t) = m accent(vb(x),dot.double)
$
$
- m omega_0^2 vb(x) - m gamma dot(vb(x)) - e vb(E)(vb(x),t) = m accent(vb(x),dot.double)
$
$
- e vb(E)(vb(x),t) = m (accent(vb(x),dot.double) + gamma dot(vb(x)) + omega_0^2 vb(x))
$
- 我们忽略了外加电场和局部电场之间的差异。
- 因此，该模型仅适用于密度相对较低的物质。

电荷量为$-e$的电子受谐波力约束并受电场$vb(E)(vb(x), t)$作用的运动方程为：
$
m (accent(vb(x),dot.double) + gamma dot(vb(x)) + omega_0^2 vb(x)) = - e vb(E)(vb(x),t)
$
其中等号左侧第二项为现象阻尼力、第三项为恢复力，等号右侧为电场力。
- 这里忽略了磁力。
- 振荡的振幅足够小，以便评估电子平均位置处的电场。
- 电场随时间以频率 $ω$ 谐调变化，如 $e^(-i ω t)$ 
- 一个电子贡献的偶极矩：
  $
  vb(p) = - e vb(x) = e^2/m (omega_0^2 - omega^2 - i gamma omega)^(-1) vb(E)
  $

==== From Microscopic to Macroscopic

- 单位体积内有 $N$ 个分子，每个分子有 $Z=sum_j f_j$ 个电子。
- 每个分子有 $f_i$ 个电子，其结合频率为 $omega_i$ ，阻尼常数为 $𝛾_i$

$
vb(p) = -e vb(x) = e^2/m (omega_0^2 - omega^2 - i gamma omega)^(-1) vb(E)\
vb(p) = epsilon_0 chi_e vb(E)\
epsilon/epsilon_0 = 1 + chi_e = 1 + (N e^2)/(epsilon_0 m) sum_j f_j (omega_0^2 - omega^2 - i gamma_j omega)^(-1)
$
通过对$f_i$、$omega_i$和$𝛾_i$进行适当的量子力学定义，上式可以准确描述原子对介电常数的贡献。

有
$
Re((epsilon(omega))/epsilon_0) = 1 + (N e^2)/(epsilon_0 m) sum_j f_j (omega_j^2 - omega^2)/((omega_j^2 - omega^2)^2 + gamma_j^2 omega^2)\
Im((epsilon(omega))/epsilon_0) = (N e^2)/(epsilon_0 m) sum_j f_j (gamma_j omega)/((omega_j^2 - omega^2)^2 + gamma_j^2 omega^2)
$

#figure(
  image("pic/2025-01-04-17-59-37.png", width: 50%),
  numbering: none,
)

==== Anomalous Dispersion and Resonant Absorption 异常色散和共振吸收

$
epsilon/epsilon_0 = 1 + (N e^2)/(epsilon_0 m) sum_j f_j (omega_0^2 - omega^2 - i gamma_j omega)^(-1)
$
一般来说$gamma_i << omega_i$
$
(epsilon(omega))/epsilon_0 approx 1 + (N e^2)/(epsilon_0 m) sum_j f_j (omega_j^2 - omega^2)^(-1)
$
$omega < omega_j$，第$j$组电子的贡献为正。$omega > omega_j$，则电子贡献为负。当$omega = omega_j$时
$
(epsilon(omega))/epsilon_0 approx 1 + i (N e^2)/(epsilon_0 m) sum_j f_j/(omega gamma_j)
$
- 对于低频，即低于最小 $omega_j$ 的频率，和的贡献是正的。而$epsilon(omega)/epsilon_0$大于1。
- 随着频率的升高，会通过越来越多的$omega_j$，和将由正变负。而$epsilon(omega)/epsilon_0$将小于 1。

共振吸收：
在共振频率附近，$epsilon(omega)$的虚部是显著的。由于$epsilon(omega)$的虚部为正表示电磁波的能量耗散到介质中，因此$Im(epsilon)$较大的区域称为共振吸收区域。

#figure(
  image("pic/2025-01-04-18-16-30.png", width: 80%),
  numbering: none,
)

==== Low-Frequency Behavior, Electric Conductivity 低频行为，电导率

$omega -> 0$
如果每个分子中的某一部分电子$f_0$是 “自由 ”的，即$omega_0=0$，那么介电常数在$omega=0$时是奇异的。

如果分别展示自由电子的贡献，则
$
epsilon(omega) = epsilon_b (omega) + i (N e^2 f_0)/(m omega (gamma_0 - i omega))
$
其中$epsilon_b$时其余偶极子的贡献。

*Conductivity*
$
curl vb(H) = vb(J) + dv(vb(D),t)\
vb(J) = sigma vb(E), vb(D) = epsilon_b vb(E)
$
就有
$
curl vb(H) = - i omega (epsilon_b + i sigma/omega) vb(E)
$
从而
$
sigma = (f_0 N e^2)/(m (gamma_0 - i omega))
$

#problem[Conductivity of Copper

What is the critical frequency of copper at room temperature as a good conductor?
- $f_0 N$: the number of free electrons per unit volume in the medium.
- $𝛾_0/f_0$: damping constant, can be determined empirically from experimental data.
]

#solution[
  #figure(
    image("pic/2025-01-04-18-32-58.png", width: 80%),
    numbering: none,
  )
电介质和导体之间的区别是人为的，至少在 $omega=0$时是如此。
]

#figure(
  image("pic/2025-01-04-18-38-23.png", width: 100%),
  numbering: none,
)

==== High-Frequency Limit, Plasma Frequency 高频极限，等离子体频率

频率远高于最高共振频率
$
epsilon(omega)/epsilon_0 = 1 - omega_p^2/omega^2
$
$
epsilon_p^2 = (N Z e^2)/(epsilon_0 m)
$
介质的等离子体频率：只取决于单位体积内的电子总数$N Z$。
$
k approx omega/c sqrt(epsilon/epsilon_0), Z = sum_j f_j
$
色散关系或方程$omega=omega(k)$
$
c k = sqrt(omega^2 - omega_p^2), omega^2>>omega_p^2 => epsilon(omega)/epsilon_0 approx 1
$
略小于 1，但随着频率的增加而增加。

#problem[Electromagnetic wave reflection from a plasma

在等离子体中，电子是自由的，阻尼可以忽略不计。
]

#solution[
  #figure(
    image("pic/2025-01-04-18-58-12.png", width: 80%),
    numbering: none,
  )
]

#problem[The reflectivity of metals at optical and higher frequency
]

#solution[

  #figure(
    image("pic/2025-01-04-19-00-53.png", width: 80%),
    numbering: none,
  )
]

==== Index of Refraction and Absorption Coefficient of Liquid Water as a Function of Frequency 液态水的折射率和吸收系数随频率变化

#figure(
  image("pic/2025-01-04-19-04-52.png", width: 80%),
  numbering: none,
)

== Superposition of Waves in One Dimension; Group Velocity

1. 如果介质是色散的，则波的每个频率成分的相位速度都不相同。
2. 在色散介质中，能量流动的速度可能与相位速度相差很大，甚至缺乏精确的意义。
3. 在耗散介质中，辐射脉冲在传播过程中会发生衰减或失真，这取决于耗散效应是否是频率的敏感函数。

#figure(
  image("pic/2025-01-04-19-08-26.png", width: 80%),
  numbering: none,
)

=== A scaler wave in only one dimension

$
u(x,t) = a e^(i k x - i omega t) + b e^(-i k x - i omega t)
$
色散性质
$
omega = omega(k)
$
通解
$
u(x,t) = 1/sqrt(2 pi) integral_(-oo)^oo A(k) e^(i k x - i omega(k) t) dd(k)
$
#figure(
  image("pic/2025-01-04-19-14-07.png", width: 80%),
  numbering: none,
)

=== A finite wave train

#figure(
  image("pic/2025-01-04-19-16-17.png", width: 80%),
  numbering: none,
)
- Fourier bandwith theorem

=== Group Velocity

$
u(x,t) approx u(x - t eval(dv(omega,k))_0, 0) e^(i(k_0 eval(dv(omega,k))_0- omega_0)t)
$

除了整体相位系数外，脉冲以一种不扭曲的速度（称为群速度）沿形状行进：
$
v_g = eval(dv(omega,k))_0
$

==== Light waves

$
omega(k) = (c k)/n(k)
$
其中$c$是真空中的光速，$n(k)$是折射率。
$
v_g &= eval(dv(omega,k)) = c(1/n - k/n^2 dv(n,k))\
&= c(1/n - k/n^2 dv(n,omega) dv(omega,k))\
&= c/n - (c k)/n^2 dv(n,omega) v_g = c/n - omega/n dv(n,omega) v_g
$
从而
$
v_p = omega(k)/k = c/n(k)\
v_g = c/(n(omega) + omega dv(n,omega))
$

#figure(
  image("pic/2025-01-04-19-24-39.png", width: 80%),
  numbering: none,
)

== Causality in the Connection Between D and E; Kramers-Kronig Relations 介质中D和E之间的因果关系；Kramers-Kronig关系

#figure(
  image("pic/2025-01-04-19-25-04.png", width: 60%),
  numbering: none,
)

#figure(
  image("pic/2025-01-04-19-25-25.png", width: 80%),
  numbering: none,
)

#figure(
  image("pic/2025-01-04-19-25-39.png", width: 80%),
  numbering: none,
)

#figure(
  image("pic/2025-01-04-19-25-57.png", width: 80%),
  numbering: none,
)

#figure(
  image("pic/2025-01-04-19-26-10.png", width: 80%),
  numbering: none,
)