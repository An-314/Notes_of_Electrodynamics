#import"@preview/physica:0.9.2":*
#import "template.typ": *

= Waveguides, Resonant Cavities, and Optical Fiber 波导、谐振腔和光纤

#figure(
  image("pic/2025-01-04-19-29-16.png", width: 80%),
  numbering: none,
)

== Fields at the Surface of and Within a Conductor 导体表面和内部的场

=== Perfect conductor 理想导体

#figure(
  image("pic/2025-01-04-19-30-38.png", width: 80%),
  numbering: none,
)

完美导体外部只能存在法向的$vb(E)$场和切向的$vb(H)$场。

=== Good, but not Perfect Conductor 良导体

电导率 $𝞼$ 是一个有限值，欧姆定律 $vb(J)= 𝞼 vb(E)$ 意味着没有实际的表面电流 $vb(K)$。

对于具有趋肤深度 $delta$ 的过渡层来说
$
vu(n) dot vb(D) = Sigma\
vu(n) times vb(H) = vb(K)
$
上述公式只是近似正确。在电导率有限的情况下，实际上不可能存在表面电流层。

#figure(
  image("pic/2025-01-04-19-47-06.png", width: 80%),
  numbering: none,
)

#figure(
  image("pic/2025-01-04-19-47-59.png", width: 80%),
  numbering: none,
)

#figure(
  image("pic/2025-01-04-19-48-19.png", width: 80%),
  numbering: none,
)
#figure(
  image("pic/2025-01-04-19-50-16.png", width: 80%),
  numbering: none,
)
#figure(
  image("pic/2025-01-04-19-52-50.png", width: 80%),
  numbering: none,
)
#figure(
  image("pic/2025-01-04-20-00-59.png", width: 60%),
  numbering: none,
)

=== The power flow into the conductor

#figure(
image("pic/2025-01-04-20-03-19.png", width: 80%),
  numbering: none,
)

== Cylindrical Cavities and Waveguides 圆柱腔和波导

1. 假设边界表面为完美导体。
2. 假设横截面尺寸和形状沿圆柱体轴线不变。
3. 圆柱内部的场与时间相关，为正弦$e^(-i omega t)$。
4. 圆柱体内部填充均匀的非耗散介质，其介电常数为$𝜀$，磁导率为$𝜇$。

Maxwell Equations
$
curl vb(E) = i omega vb(B)\
curl vb(B) = - i mu epsilon omega vb(E)\
div vb(E) = 0\
div vb(B) = 0
$
有
$
(laplacian + mu epsilon omega^2) mat(vb(E);vb(B)) = 0
$
我们把 Laplace 算子的横向部分拿出来
$
vb(E)(x,y,z,t) = vb(E)(x,y)e^(plus.minus i k z - i omega t)\
vb(B)(x,y,z,t) = vb(B)(x,y)e^(plus.minus i k z - i omega t)
$
记
$
laplacian_t = laplacian - pdv(,z,2)
$
则
$
(laplacian_t + (mu epsilon omega^2 - k^2)) mat(vb(E);vb(B)) = 0
$
$
vb(E) = vb(E)_z + vb(E)_t\
$
有
$
vb(E)_z = vu(z) E_z\
vb(E)_t = (vu(z) times vb(E)) times vu(z)
$
有
$
curl vb(E) = i omega vb(B)\
grad_t E_z times vu(z) - pdv(,z) vb(E)_t times vu(z) + vu(z)(curl vb(E)) dot vu(z) = i omega (vb(B)_t + vu(z) B_z)
$
对应得到
$
grad_t E_z times vu(z) - pdv(,z) vb(E)_t times vu(z) = i omega vb(B)_t\
(bold(nabla)_t times vb(E)_t) dot vu(z) = i omega B_z
$
有
$
vu(z) times (grad_t E_z times vu(z)) - vu(z) times (pdv(,z) vb(E)_t times vu(z)) = i omega vu(z) times vb(B)_t\
pdv(,z) vb(E)_t + i omega vu(z) times vb(B)_t = grad_t E_z
$
类似，*Maxwell 方程可以变为*
$
pdv(,z) vb(E)_t + i omega vu(z) times vb(B)_t = grad_t E_z\
(bold(nabla)_t times vb(E)_t) dot vu(z) = i omega B_z\
pdv(,z) vb(B)_t - i mu epsilon omega vu(z) times vb(E)_t = grad_t B_z\
(bold(nabla)_t times vb(B)_t) dot vu(z) = - i mu epsilon omega E_z\
bold(nabla)_t dot vb(E)_t = - pdv(E_z,z)\
bold(nabla)_t dot vb(B)_t = - pdv(B_z,z)
$

=== Transverse components of E and B, determined by Ez and Bz

$
pdv(,z) vb(B)_t - i mu epsilon omega vu(z) times vb(E)_t = grad_t B_z\
pdv(,z) vu(z) times vb(B)_t - i mu epsilon omega vu(z) times (vu(z) times vb(E)_t) = vu(z) times (grad_t B_z)\
pdv(,z) (1/(i omega) (grad_t E_z - pdv(vb(E)_t,z))) + i mu epsilon omega vb(E)_t = vu(z) times (grad_t B_z)\
k/omega grad_t E_z - 1/(i omega)(-k^2) vb(E)_t + i mu epsilon omega vb(E)_t = vu(z) times (grad_t B_z)\
$
解得
$
vb(E)_t = i/(mu epsilon omega^2 - k^2) (k grad_t E_z - omega vu(z) times grad_t B_z)\
$
同样地
$
vb(B)_t = i/(mu epsilon omega^2 - k^2) (k grad_t B_z + mu epsilon omega vu(z) times grad_t E_z)\
$
- 对于反方向的波，改变$k$的符号。
- 适用于*横向电磁波（TEM）*除外，即$mu epsilon omega^2 != k^2$。

=== Transverse Electromagnetic Waves 横向电磁波（TEM）

$
bold(nabla)_t times vb(E)_"TEM" = 0\
bold(nabla)_t dot vb(E)_"TEM" = 0\
$
$E_"TEM"$是一种二维静电问题解决方案。

轴向波数
$
(laplacian_t + (mu epsilon omega^2 - k^2)) mat(vb(E);vb(B)) = 0\
k = k_0 = omega sqrt(mu epsilon)
$
磁场
$
pdv(vb(B)_t,z) - i mu epsilon omega vu(z) times vb(E)_t = grad_t B_z\
vb(B)_"TEM" = plus.minus sqrt(mu epsilon) vu(z) times vb(E)_"TEM"\
$
- TEM 模式不可能存在于具有无限传导性的单个空心圆柱导体中。
- 对于所有 ω，k 都是实数。

=== Hollow cylinders & boundary conditions 空心圆柱体和边界条件

对理想导体，边界条件
$
vu(n) times vb(E) = 0\
vu(n) dot vb(B) = 0\
vu(n) dot vb(D) = Sigma\
vu(n) times vb(H) = vb(K)
$
以及Maxwell方程
$
(laplacian_t + (mu epsilon omega^2 - k^2)) mat(vb(E);vb(B)) = 0
$

#figure(
  image("pic/2025-01-04-21-56-47.png", width: 20%),
  numbering: none,
)

- 电场边界条件

$
vu(n) times eval(vb(E))_S = 0\
eval(E_z)_S = 0
$
$
pdv(,z) vb(E)_t + i omega vu(z) times vb(B)_t = grad_t E_z\
pdv(,z) vu(t) dot vb(E)_t + i omega vu(t) dot (vu(z) times vb(B)_t) = vu(t) dot grad_t E_z\
eval(pdv(E_z,t))_S = 0\
$

- 磁场边界条件

$
vu(n) dot eval(vb(B))_S = 0\
eval(B_n)_S = 0
$

$
pdv(,z) vb(B)_t - i mu epsilon omega vu(z) times vb(E)_t = grad_t B_z\
pdv(,z) vu(n) dot vb(B)_t - i mu epsilon omega vu(n) dot (vu(z) times vb(E)_t) = vu(n) dot grad_t B_z\
eval(pdv(B_z,n))_S = 0\
$
得到四个边界条件
$
eval(E_z)_S = 0\
eval(pdv(E_z,t))_S = 0\
eval(B_n)_S = 0\
eval(pdv(B_z,n))_S = 0
$

=== Two kinds of EM wave inside the hollow cylinder

- Transverse Magnetic (TM) Waves 横磁波:

$
vb(B)_z = 0 "everywhere"\
eval(E_z)_S = 0 "inner surface boundary condition"\
$

- Transverse Electric (TE) Waves 横电波:

$
vb(E)_z = 0 "everywhere"\
eval(pdv(B_z, n))_S = 0 "inner surface boundary condition"\
$

各种 TM 波和 TE 波，再加上可能存在的 TEM 波，构成了一套完整的场，用于描述波导或空腔中的任意电磁干扰。

#figure(
  image("pic/2025-01-04-22-07-15.png", width: 60%),
  numbering: none,
)

== Waveguides 波导

=== TM and TE fields in a waveguide 波导中的 TM 和 TE 场

$
vb(E)_t = i/(mu epsilon omega^2 - k^2) (k grad_t E_z - omega vu(z) times grad_t B_z)\
vb(B)_t = i/(mu epsilon omega^2 - k^2) (k grad_t B_z + mu epsilon omega vu(z) times grad_t E_z)\
$

$
vb(E)_t = plus.minus (i k)/gamma^2 grad_t Psi "TM Wave"\
vb(B)_t = plus.minus (i k)/gamma^2 grad_t Psi "TE Wave"\
$
其中$Psi e^(plus.minus i k z)$是$E_z (H_z)$对于 TM(TE) 波，且
$
gamma^2 = mu epsilon omega^2 - k^2
$
$
vb(H)_t = plus.minus (1)/Z vu(z) times vb(E)_t\
$
其中$+$对应$e^(i k z)$，$-$对应$e^(-i k z)$。而
$
Z = k/(omega mu) = k/k_0 sqrt(epsilon/mu) "TM Wave"\
Z = (mu omega)/(k) = k_0/k sqrt(mu/epsilon) "TE Wave"\
k_0 = omega sqrt(mu epsilon)
$

=== Modes of a waveguide 波导的模式

$
(laplacian_t + (mu epsilon omega^2 - k^2)) mat(vb(E);vb(B)) = 0\
(laplacian_t + (mu epsilon omega^2 - k^2)) mat(E_z;B_z) = 0\
(laplacian_t + (mu epsilon omega^2 - k^2)) Psi e^(plus.minus i k z) = 0\
$
其中
$
(laplacian_t + gamma^2) Psi = 0
$
边界条件是
$
eval(Psi)_S = 0 "TM Wave"\
eval(pdv(Psi, n))_S = 0 "TE Wave"
$
会有一个特征值$gamma_𝜆^2$的频谱，以及相应的解$Psi_lambda$，$lambda=1,2,3,...$，它们构成一个正交集。这些不同的解称为导轨的模式。

=== Cutoff Frequency 截止频率

对于给定的频率$omega$，波数$k$是根据每个$lambda$值确定的：
$
k_lambda^2 = mu epsilon omega^2 - gamma_lambda^2\
$
截止频率
$
omega_lambda = gamma_lambda/sqrt(mu epsilon)\
k_lambda = sqrt(mu epsilon) sqrt(omega^2 - omega_lambda^2)
$

1. $omega>omega_lambda$：$k_lambda$为实，$𝜆$模式的波可以在导轨中传播。
2. $omega<omega_lambda$：$k_lambda$为虚，这种模式不能传播。它们被称为截止模式或蒸发模式。

我们可以选择合适的导波板尺寸，使波频仅高于最低模式截止频率。

#figure(
  image("pic/2025-01-04-22-32-46.png", width: 40%),
  numbering: none,
)

截止频率$omega_lambda$由导轨尺寸和模式数$𝜆$决定。

相位速度大于无限空间值。
$
v_p = omega/k_lambda = 1/(sqrt(mu epsilon) sqrt(1 - (omega_lambda/omega)^2)) > 1/sqrt(mu epsilon)
$

== Modes in a Rectangular Waveguide 矩形波导中的模式

说明 TE 波在内径为 a、b 的矩形波导中的传播情况

#figure(
  image("pic/2025-01-04-22-35-42.png", width: 40%),
  numbering: none,
)

#figure(
  image("pic/2025-01-04-22-40-22.png", width: 80%),
  numbering: none,
)

$
Psi = Psi_x Psi_y = H_0 cos((m pi x)/a) cos((n pi y)/b)\
gamma^2_(m,n) = pi^2 (m^2/a^2 + n^2/b^2)
$
Cutoff Frequency
$
omega_(m,n) = gamma_(m,n)/sqrt(mu epsilon) = pi/sqrt(mu epsilon) sqrt((m/a)^2 + (n/b)^2)
$

如果$a>b$，则最低截止频率为 TE 模式，$m=1,n=0$
$
omega_(1,0) = pi/(sqrt(mu epsilon)a)
$
TE10 模下的电磁场
$
vb(H)_t = plus.minus (i k)/gamma^2 grad_t Psi\
vb(E)_t = plus.minus (1)/Z vu(z) times vb(H)_t
$
$
H_z = H_0 cos((pi x)/a) e^(i k z - i omega t)\
H_x = - (i k a)/pi H_0 sin((pi x)/a) e^(i k z - i omega t)\
E_y = i (omega a mu)/(pi) H_0 sin((pi x)/a) e^(i k z - i omega t)
$

#figure(
  image("pic/2025-01-04-22-51-49.png", width: 80%),
  numbering: none,
)

== Energy Flow and Attenuation in Waveguides 波导中的能量流和衰减

=== Complex Poynting Vector for one mode at a time 一个模式的复 Poynting 矢量

#figure(
  image("pic/2025-01-04-23-18-41.png", width: 80%),
  numbering: none,
)

=== The Total Power Flow P

#figure(
  image("pic/2025-01-04-23-20-30.png", width: 80%),
  numbering: none,
)

=== Group Velocity and Phase Velocity

#figure(
  image("pic/2025-01-04-23-21-14.png", width: 80%),
  numbering: none,
)

#figure(
  image("pic/2025-01-04-23-22-09.png", width: 80%),
  numbering: none,
)   

=== Waveguide with Good Conductivity

#figure(
  image("pic/2025-01-04-23-24-40.png", width: 80%),
  numbering: none,
)

#figure(
  image("pic/2025-01-04-23-25-11.png", width: 80%),
  numbering: none,
)

#figure(
  image("pic/2025-01-04-23-25-22.png", width: 80%),
  numbering: none,
)

#figure(
  image("pic/2025-01-04-23-25-35.png", width: 80%),
  numbering: none,
)

== Perturbation of Boundary Conditions 边界条件的扰动

#figure(
  image("pic/2025-01-05-00-28-20.png", width: 80%),
  numbering: none,
)

#figure(
  image("pic/2025-01-05-00-28-41.png", width: 80%),
  numbering: none,
)

== Resonant Cavities 谐振腔

对于$z$向无界的波导，就如前面讨论$gamma^2>0$，有是指数形式的解。
$
vb(E)_t = i/(mu epsilon omega^2 - k^2) (k grad_t E_z - omega vu(z) times grad_t B_z)\
vb(B)_t = i/(mu epsilon omega^2 - k^2) (k grad_t B_z + mu epsilon omega vu(z) times grad_t E_z)\
$

$
vb(E)_t = plus.minus (i k)/gamma^2 grad_t Psi "TM Wave"\
vb(B)_t = plus.minus (i k)/gamma^2 grad_t Psi "TE Wave"\
$
其中$Psi e^(plus.minus i k z)$是$E_z (H_z)$对于 TM(TE) 波，且$gamma^2 = mu epsilon omega^2 - k^2$

谐振腔可以是任何形状，具有封闭的导体表面。

但通常情况下，我们将端面置于一段圆柱形波导上，以产生一个空腔。端面是平面，垂直于圆柱的轴线。

#figure(
  image("pic/2025-01-05-00-41-36.png", width: 30%),
  numbering: none,
)

=== Boundary conditions at the two ends of a Cavity 腔体两端的边界条件

由于 $z=0,d$ 处的边界条件，因此场的 $z$ 依赖性是驻波：
$
Psi e^(plus.minus i k z) => A sin k z + B cos k z, k =p pi/d, p=1,2,3,...
$
- TM 模式
$
vb(B)_z = 0 "everywhere"\
eval(E_z)_S = 0 "inner surface boundary condition"\
$
$
E_z = Psi(x,y) cos((p pi z)/d)\
$
- TE 模式
$
vb(E)_z = 0 "everywhere"\
eval(pdv(B_z, n))_S = 0 "inner surface boundary condition"\
$
$
H_z = Psi(x,y) cos((p pi z)/d)\
$

例如
- TE10 的guide
$
H_z = H_0 cos((pi z)/a) e^(i k z - i omega t)\
H_x = - (i k a)/pi H_0 sin((pi z)/a) e^(i k z - i omega t)\
E_y = i (omega a mu)/(pi) H_0 sin((pi z)/a) e^(i k z - i omega t)
$
- TE101 的 cavity
$
H_z = H_0 cos((pi z)/a) sin((pi x)/d) e^(- i omega t)\
H_x = - (i a)/d H_0 sin((pi z)/a) cos((pi x)/d) e^(- i omega t)\
E_y = i (omega a mu)/(pi) H_0 sin((pi z)/a) sin((pi x)/d) e^(- i omega t)
$

=== Fields in a Cavity

- TM 模式
$
vb(E)_t = - (p pi)/(d gamma^2) sin((p pi z)/d) grad_t Psi\
vb(H)_t = (i epsilon omega)/gamma^2 cos((p pi z)/d) vu(z) times grad_t Psi
$
$
E_z = Psi(x,y) cos((p pi z)/d)\
$
- TE 模式
$
vb(H)_t = (p pi)/(d gamma^2) cos((p pi z)/d) grad_t Psi\
vb(E)_t = - (i epsilon omega)/gamma^2 sin((p pi z)/d) vu(z) times grad_t Psi
$
$
H_z = Psi(x,y) cos((p pi z)/d)\
$
其对应的特征值问题是
$
gamma^2 = mu epsilon omega^2 - ((p pi)/d)^2
$
对应的特征频率是
$
omega^2_lambda_p = 1/(mu epsilon) (gamma^2 + ((p pi)/d)^2)
$

#figure(
  image("pic/2025-01-05-01-12-23.png", width: 80%),
  numbering: none,
)

#figure(
  image("pic/2025-01-05-01-12-52.png", width: 80%),
  numbering: none,
)

#figure(
  image("pic/2025-01-05-01-13-05.png", width: 80%),
  numbering: none,
)

#problem[

  Find the fields in a right circular cylinder cavity with perfect conductor.
]

#solution[

#figure(
  image("pic/2025-01-05-01-13-55.png", width: 80%),
  numbering: none,
)
#figure(
  image("pic/2025-01-05-01-24-44.png", width: 80%),
  numbering: none,
)
#figure(
  image("pic/2025-01-05-01-25-02.png", width: 80%),
  numbering: none,
)
#figure(
  image("pic/2025-01-05-01-25-21.png", width: 80%),
  numbering: none,
)
]

== Power Losses in a Cavity: Q of a Cavity

=== Quality Factor

#figure(
  image("pic/2025-01-05-01-43-15.png", width: 80%),
  numbering: none,
)

=== The width of the resonant spectrum

#figure(
  image("pic/2025-01-05-01-43-32.png", width: 80%),
  numbering: none,
)

=== Calculating Q from stored energy and power loss

#figure(
  image("pic/2025-01-05-01-44-01.png", width: 80%),
  numbering: none,
)

=== The resonance frequency shift Δ𝜔

#figure(
  image("pic/2025-01-05-01-45-17.png", width: 80%),
  numbering: none,
)
