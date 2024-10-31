#import"@preview/physica:0.9.2":*
#import "template.typ": *

= 多极、宏观介质的静电、电介质 Multipoles, Electrostatics of Macroscopic Media, Dielectrics

== Multipole Expansion 多极展开

// === Multipole Expansion of the Potential outside One Sphere in which a Localized Distribution of Charge is Described 多极展开：单球外的势展开

#figure(
  image("pic/2024-10-29-17-14-57.png", width: 30%),
  numbering: none,
)

=== Multipole Expansion

一个球体外的电势，其中描述了电荷 $ρ(vb(x)')$ 的局部分布：
$
Phi(r, theta, phi) = sum_(l=0)^oo sum_(m=-l)^l (A_(l m) r^l + B_(l m) r^(-l-1)) Y_(l m) (theta, phi)
$
得到多级展开
$
Phi(vb(x)) = 1/(4 pi epsilon_0) sum_(l=0)^oo sum_(m=-l)^l ((4 pi)/(2l+1)) q_(l m) (Y_(l m) (theta, phi))/(r^(l+1))
$
其中$q_(l m)$被称为多级矩。

$l=0$就是单极项(monopole)，$l=1$是二极项(dipole)，$l=2$是四极项(quadrupole)。

#figure(
  image("pic/2024-10-29-17-25-22.png", width: 80%),
  numbering: none,
)

=== Multipole moments 多级矩 $q_(l m)$

$
Phi(vb(x)) = 1/(4 pi epsilon_0) integral (rho(vb(x')))/abs(vb(x) - vb(x')) dd(x',3)
$
由于
$
1/abs(vb(x) - vb(x')) = 4 pi sum_(l=0)^oo sum_(m=-l)^l 1/(2l+1) r_<^l /r_>^(l+1) Y^*_(l m) (theta', phi') Y_(l m) (theta, phi)
$
其中$r_< = r$，$r_> = r'$，有
$
Phi(vb(x)) = 1/(epsilon_0) sum_(l=0)^oo sum_(m=-l)^l 1/(2l+1) (integral rho(vb(x')) r'^l Y^*_(l m) (theta', phi') dd(x',3)) (Y_(l m) (theta, phi))/(r^(l+1))
$
对比多级展开，得到多级矩
$
q_(l m) = integral Y^*_(l m) (theta', phi') r'^l rho(vb(x')) dd(x',3)
$


- Monopole moment 单极矩
    $
    q = integral rho(vb(x')) dd(x,3)
    $
- Dipole moment 二极矩
    $
    vb(p) = integral vb(x') rho(vb(x')) dd(x',3)
    $
- Quadrupole moment 四极矩
    $
    Q_(i j) = integral (3 x'_i x'_j - r^2 delta_(i j)) rho(vb(x')) dd(x',3)
    $

在直角坐标系里
#text(fill: blue)[
$
Phi(vb(x)) = 1/(epsilon_0) sum_(l=0)^oo sum_(m=-l)^l 1/(2l+1) (integral rho(vb(x')) r'^l Y^*_(l m) (theta', phi') dd(x',3)) (Y_(l m) (theta, phi))/(r^(l+1))\
Phi(vb(x)) = 1/(4 pi epsilon_0) (q/r + (vb(p) dot vb(x))/r^3 + 1/2 sum_(i j) Q_(i j) (x_i x_j)/r^5 + ...)
$
]
其中
$
q_(0 0) &= 1/sqrt(4 pi) q\
q_(1 1) &= - sqrt(3/(8pi)) (p_x - i p_y)\
q_(1 0) &= sqrt(3/(4pi)) p_z\
q_(2 2) &= 1/12 sqrt(15/(2pi)) (Q_(11) - 2 i Q_(1 2) - Q_(22))\
q_(2 1) &= - 1/3 sqrt(15/(8pi)) (Q_(13) - i Q_(23))\
q_(2 0) &= 1/2 sqrt(5/(4pi)) Q_(33)
$

第 $l$ 极多极系数是以矩形坐标表示的相应多极系数的线性组合。

=== Electric fields produced by multipole moments 多级矩产生的电场

球面坐标中确定 $l$ 和 $m$ 的电场分量
$
Phi(vb(x)) = 1/(4 pi epsilon_0) sum_(l=0)^oo sum_(m=-l)^l ((4 pi)/(2l+1)) q_(l m) (Y_(l m) (theta, phi))/(r^(l+1))\
grad Phi = pdv(Phi,r) vu(r) + 1/r pdv(Phi,theta) vu(theta) + 1/(r sin theta) pdv(Phi,phi) vu(phi)
$

给定多极 $q_(l m)$ 的电场分量
$
E_r &= (l+1)/((2l+1)epsilon_0) q_(l m) (Y_(l m) (theta, phi))/r^(l+2)\
E_theta &= - 1/((2l+1)epsilon_0)q_(l m)/r^(l+2)  pdv(Y_(l m) (theta, phi), theta)\
E_phi &= - 1/((2l+1)epsilon_0)q_(l m)/(r^(l+2)) (i m)/(sin theta) Y_(l m) (theta, phi)
$

沿 z 轴的 "纯"偶极子 $vb(p)$ 产生的电场
$
Phi(vb(x)) = (vb(p) dot vb(z))/(4pi epsilon_0 r^3) = (p_z cos theta)/(4pi epsilon_0 r^2)
$
其中
$
vb(p) = integral vb(x') rho(vb(x')) dd(x',3) "或者" vb(p) = sum_i q_i vb(r'_i)
$
只有当 $r>>d$ 时，这个解才是 “物理” 偶极子场的有效近似值
$
vb(E)_"dip" = p/(4pi epsilon_0 r^3) (2 cos theta vu(r) + sin theta vu(theta))
$

#figure(
  image("pic/2024-10-29-20-15-41.png", width: 100%),
  numbering: none,
)

$vb(x)_0$ 处偶极子 $vb(p)$ 在 $vb(x)$ 处产生的电场
$
vb(E) (vb(x)) = - grad (vb(p) dot (vb(x) - vb(x)_0))/(4 pi epsilon_0 abs(vb(x) - vb(x)_0)^3) = (3 vu(n) (vb(p) dot vu(n)) - vb(p))/(4 pi epsilon_0 abs(vb(x) - vb(x)_0)^3)
$
其中 $vu(n) = (vb(x) - vb(x)_0)/abs(vb(x) - vb(x)_0)$

=== Relationship between the multipole moment coefficients and choice of origin 多级矩系数与原点选择的关系

位于 $x_0=(r_0, θ_0, ϕ_0)$ 的一个点电荷 $e$ 的多极矩：
$
q_(l m) = integral Y^*_(l m) (theta', phi') r'^l e delta(vb(x') - vb(x_0)) dd(x',3)\
delta(vb(x') - vb(x_0)) = delta(r' - r_0) delta(theta' - theta_0) delta(phi' - phi_0)\
dd(x',3) = r'^2 sin theta' dd(r') dd(theta') dd(phi')
$
则有
$
q_(l m) = e r_0^l Y^*_(l m) (theta_0, phi_0)
$

#figure(
  image("pic/2024-10-29-20-31-13.png", width: 30%),
  numbering: none,
)
- $l=0$ 
    $
    Y(0,0) = 1/sqrt(4 pi)\
    q_(0 0) = e/sqrt(4 pi)
    $
- $l>0$
    $q_(l m)$ 取决于点电荷的位置

两个点电荷 $+e$ 和 $-e$ 在 $x_0$ 和 $x_1$ 处的多极矩：
$
q_(l m) = e (r_0^l Y^*_(l m) (theta_0, phi_0) - r_1^l Y^*_(l m) (theta_1, phi_1))
$
- $l=0$
    $
    q_(0 0) = 0
    $
- $l=1$
    $
    Y_(1 0) &= sqrt(3/(4 pi)) cos theta\
    Y_(1 1) &= - sqrt(3/(8 pi)) sin theta e^(i phi)\
    q_(1 0) &= e sqrt(3/(4 pi)) (z_0 - z_1)\
    q_(1 1) &= - e sqrt(3/(8 pi)) ((x_0 - x_1) - i(y_0 - y_1))
    $
- $l>1$
    $q_(l m)$ 取决于两个点电荷的位置

*任何电荷分布的最低非零的多极矩 $q_(l m)$ 的值都与原点的选择无关，但所有较高的多极矩一般都取决于原点的位置。*

=== True Field of a “Pure” Dipole 纯偶极子的场

局部电荷分布的电场体积积分$ρ(x)$坐标原点选在球心。

#figure(
  image("pic/2024-10-29-20-44-19.png", width: 80%),
  numbering: none,
)

$
integral_(r<R) vb(E) (vb(x)) &= integral_(r<R) grad Phi(vb(x)) dd(x,3)\
&= - integral_(r=R) Phi(vb(x)) vu(n) dd(a) = - R^2 integral_(r=R) Phi(vb(x)) vu(n) dd(Omega)\
&= - R^2/(4 pi epsilon_0) integral dd(x',3) rho(vb(x')) integral_(r=R) vu(n)/abs(vb(x) - vb(x')) dd(Omega)\
$
注意到
$
integral_(r=R) vu(n)/abs(vb(x) - vb(x')) dd(Omega) =integral r_</r_>^2  vu(n) cos gamma dd(Omega)
$
这是因为对于
$
1/abs(vb(x) - vb(x')) = sum_(l=0)^oo r_<^l/r_>^(l+1) P_l (cos theta)
$
只有$l=1$的成分，该积分结果为
$
integral_(r=R) vu(n)/abs(vb(x) - vb(x')) dd(Omega) = (4 pi)/3 vu(n')
$
$
integral_(r<R) vb(E) (vb(x)) = - R^2/(3 epsilon_0) integral r_</r_>^2 rho(vb(x')) vu(n') dd(x',3)
$
有
$
integral_(r<R) vb(E) (vb(x)) &= - vb(p)/(3 epsilon_0) &(a) "For all the charges are inside the sphere"\
integral_(r<R) vb(E) (vb(x)) &= (4pi)/3 R^3 vb(E)(0) &(b) "For all the charges are outside the sphere"
$
这说明了
$
vb(E)_"dip" = p/(4pi epsilon_0 r^3) (2 cos theta vu(r) + sin theta vu(theta))
$
只适用于半径为 $ε$ 的微小球体之外——它对电场（或平均场）体积积分的贡献为零。

对于纯的偶极子，电场的体积积分是零，就有
$
vb(E) (vb(x)) = 1/(4 pi epsilon_0)( (3 vu(n) (vb(p) dot vu(n)) - vb(p))/abs(vb(x) - vb(x)_0)^3 - (4pi)/3 vb(p) delta(vb(x) - vb(x)_0))
$

== Multipole Expansion of the Energy of a Charge Distribution in an External Field 外场中电荷分布能量的多极扩展

=== Multipole Expansion of the Energy of a Charge Distribution in an External Field

系统的静电能量，包括置于外部电势 $Phi(x)$ 中的局部电荷分布 $ρ(x)$：
$
W = integral rho (vb(x)) Phi (vb(x)) dd(x,3)
$
用泰勒级数展开 $Φ(x)$（支持在整个区域内缓慢改变 $Φ(x)$ ）：
$
Phi(vb(x)) &= Phi(0) + vb(x) dot grad Phi(0) + 1/2 sum_i sum_j x_i x_j pdv(Phi,x_j,x_j)(0) + ...\
&= Phi(0) - vb(x) dot vb(E)(0) - 1/2 sum_i sum_j x_i x_j pdv(E_j,x_i) (0) + ...
$
其中
$
E_j = - pdv(Phi,x_j)
$
进一步注意到，对外场有
$
1/6 r^2 div vb(E) (0) = 1/6 sum_i pdv(E_i,x_i) (0) = 0
$
则有
$
Phi(vb(x)) &= Phi(0) - vb(x) dot vb(E)(0) - 1/6 sum_i sum_j (3 x_i x_j - r^2 delta_(i j))pdv(E_j,x_i) (0) + ...
$
其中
$
W = integral rho(vb(x)) Phi(vb(x)) dd(x,3) , vb(p) = integral vb(x') rho(vb(x')) dd(x',3), Q_(i j) = integral (3 x'_i x'_j - r^2 delta_(i j)) rho(vb(x')) dd(x',3)
$
则有
$
W = q Phi(0) - vb(p) dot vb(E)(0) - 1/6 sum_i sum_j Q_(i j) pdv(E_j,x_i) (0) + ...
$
*各种多极子与外部场相互作用的特征方式：*
- 电荷与电势
- 偶极子与电场
- 四极子与场梯度

=== Interaction energy between two dipoles 两个偶极子之间的相互作用能

$
vb(E)(vb(x)_1) = (3 vu(n) (vb(p)_2 dot vu(n)) - vb(p)_2)/(4 pi epsilon_0 abs(vb(x)_1 - vb(x)_2)^3)
$
互能
$
W_(1 2) = - vb(p)_1 dot vb(E)(vb(x)_2)
$
从而
$
W_(1 2) = (vb(p)_1 dot vb(p)_2 - 3 (vb(p)_1 dot vu(n))(vb(p)_2 dot vu(n)))/(4 pi epsilon_0 abs(vb(x)_1 - vb(x)_2)^3)
$

== Elementary Treatment of Electrostatics with Ponderable Media 有质介质的静电学的基本处理

=== Electric Polarization in the Ponderable Media 有质介质中的电极化

电解质中：必须考虑电反应。 
1. 分子电荷密度会发生扭曲。
2. 每个分子的多极矩不同。
获得适用于宏观现象的 Maxwell 方程：对宏观上较小但微观上较大的区域求平均值
$
curl vb(E)_"micro" = 0 => curl vb(E) = 0\
$
- 在外加磁场作用下的主要分子：偶极子
- Electric polarization 电极化——定义为单位体积的偶极矩
    $
    vb(P) (vb(x)) = lim_(Δ V -> 0) (Δ vb(p))/(Δ V) = sum_i N_i expval(vb(p)_i)
    $
    其中 $i$：介质中的第$i$种分子，$N_i$：第$i$种分子在$x$点的单位体积平均数量

=== Potential in the ponderable media 有质介质中的电势

考虑 $x'$ 处的宏观小体积 $Δ V$：
$
rho (vb(x)') = sum_i N_i expval(e_i) + rho_"excess" = rho_"excess"\
vb(p) (vb(x)') = vb(P) (vb(x)') Delta V
$
其中 $rho_"excess"$：电荷密度的自由电荷部分，$e_i$ 分子的净电荷，通常情况下，平均分子电荷为零。

假设没有更高的宏观多极矩密度：
$
Delta Phi(vb(x), vb(x)') = 1/(4 pi epsilon_0) (rho(x')/abs(vb(x) - vb(x)') Delta V + (vb(P)(vb(x)') dot (vb(x) - vb(x)'))/abs(vb(x) - vb(x)')^3 Delta V)\
Phi(vb(x)) = 1/(4 pi epsilon_0) integral dd(x,3) (rho(vb(x'))/abs(vb(x) - vb(x')) + vb(P)(vb(x')) dot grad' (1/abs(vb(x) - vb(x'))))
$
利用分部积分
$
integral_V f(bold(nabla)' dot vb(A)) dd(tau') =  - integral_V vb(A) dot bold(nabla)' f dd(tau') + integral.cont_(partial V) f vb(A) dot dd(vb(a'))
$
得到
$
Phi(vb(x)) = 1/(4 pi epsilon_0) integral dd(x,3)1/abs(vb(x) - vb(x)') (rho(vb(x')) - bold(nabla)' dot vb(P)(vb(x')))
$
也就是说
$
div vb(E) = 1/epsilon_0 (rho - div vb(P))
$

=== Macroscopic Maxwell Equations for Electrostatics 电静学的宏观 Maxwell 方程

极化电荷密度的起源：在给定的小体积内，离开的分子电荷可能多于进入的分子电荷。仅显示边界附近的分子。

由于
$
Phi(vb(x)) = 1/(4 pi epsilon_0) integral dd(x,3)1/abs(vb(x) - vb(x)') (rho(vb(x')) - bold(nabla)' dot vb(P)(vb(x')))
$
结合
$
vb(E) = - grad Phi
$
$
div vb(E) = - div grad Phi = 1/epsilon_0(rho - div vb(P))
$
定义*电位移矢量*
$
vb(D) = epsilon_0 vb(E) + vb(P)
$
则有
$
div vb(D) = rho
$
其中$- div vb(P)$是*极化电荷密度*。

=== Isotropic media 各向同性介质

电极化矢量与电场方向相同，大小成比例：
$
vb(P) = chi_e epsilon_0 vb(E)
$
其中$chi_e$是*电极化率*
$
vb(D) = epsilon_0 (1 + chi_e) vb(E) = epsilon vb(E)
$
其中$epsilon$是*介电常数*，$epsilon = epsilon_0 (1 + chi_e)$。

=== Isotropic and uniform media 各向同性均匀介质

电偏振 $vb(P)$ 与 $vb(E)$ 平行，$ε$ 与位置无关
$
div vb(D) = rho , div vb(E) = rho/epsilon
$

- 给定电荷产生的电场会以 $ε/ε_0$ 的系数减小
- 极化原子产生的场与给定电荷产生的场相反
$
div vb(E) = - div grad Phi = 1/epsilon_0 (rho - div vb(P))
$

=== Boundary conditions at interfaces between different media 不同介质之间的边界条件

#figure(
image("pic/2024-10-29-21-39-35.png", width: 40%),
  numbering: none,
)

- 对于无限小 Gauss 面：
$
integral.cont vb(D) dot dd(vb(a)) = integral_V rho dd(tau)\
(vb(D)_2 - vb(D)_1) dot vu(n) Delta a = sigma Delta a
$
综上得到边界条件
$
vu(n) dot (vb(D)_2 - vb(D)_1) = sigma
$

- 对于无限小 Stokes 环：
$
integral.cont vb(E) dot dd(vb(l)) = integral_S curl vb(E) dot dd(vb(a)) = 0\
integral.cont vb(E) dot dd(vb(l)) = (vu(t) times vu(n)) dot (vb(E)_2 - vb(E)_1) Delta l = vu(n) times (vb(E)_2 - vb(E)_1) dot vu(t) Delta l = 0
$
综上得到边界条件
$
vu(n) times (vb(E)_2 - vb(E)_1) = 0
$

=== Polarization-charge density at interfaces between different media 不同介质之间的极化电荷密度

从无限小的 Gauss 面穿过界面：
$
integral_V (- div vb(P)) dd(tau) = - sigma_"pol" Delta a\
- integral.cont_S vb(P) dot dd(vb(a)) = sigma_"pol" Delta a\
$
综上得到极化电荷密度
$
sigma_"pol" = - (vb(P)_2 - vb(P)_1) dot vu(n)
$

- 对于非均匀电介质，极化电荷在电介质内无处不在
- 对于均匀电介质，极化电荷仅位于自由电荷附近和两个不同电介质之间的界面处
- 极化电荷所在的界面并非 "几何" 界面。实际上，它们有一定的厚度，包含几层分子。

#figure(
  image("pic/2024-10-29-21-47-54.png", width: 80%),
  numbering: none,
)

== Boundary-Value Problems with Dielectrics 电介质的边值问题

#problem[

Find the potential produced by a point charge $q$ embedded in a semiinfinite dielectric $ε_1$ a distance $d$ away from a plane interface that separates the first medium from another semi-infinite dielectric $ε_2$.
]

#figure(
  image("pic/2024-10-29-21-55-01.png", width: 30%),
  numbering: none,
)

#solution[

$
epsilon_1 div vb(E)_1 = rho ,&z>0\
epsilon_2 div vb(E)_2 = 0 ,&z<0\
div vb(E) =0
$
以及边界条件
$
lim_(z->0^+) mat(epsilon_1 E_z; E_x; E_y) = lim_(z->0^-) mat(epsilon_2 E_z; E_x; E_y)\
$

#figure(
  image("pic/2024-11-01-00-14-54.png", width: 100%),
  numbering: none,
)
$
eval(pdv(,z)(1/R_1))_(z=0) = - eval(pdv(,z)(1/R_2))_(z=0) = d/(rho^2+d^2)^(3/2)\
eval(pdv(,rho)(1/R_1))_(z=0) = eval(pdv(,rho)(1/R_2))_(z=0) = - rho/(rho^2+d^2)^(3/2)
$
再结合边界条件$E_z = pdv(Phi,z)$，可以得到上面的结果。
#figure(
  image("pic/2024-11-01-00-18-34.png", width: 60%),
  numbering: none,
)
]

#problem[

Find the potential when a dielectric sphere of radius a with dielectric constant $ε/ε_0$ is placed in an initially uniform electric field, which at large distances from the sphere is directed along the z-axis and has magnitude $E_0$.
]

#figure(
  image("pic/2024-11-01-00-32-16.png", width:40%),
  numbering: none,
)

#solution[


#figure(
  image("pic/2024-11-01-00-36-07.png", width: 90%),
  numbering: none,
)

#figure(
  image("pic/2024-11-01-00-47-30.png", width: 90%),
  numbering: none,
)

]

- Electric Permittivity $epsilon$ 介电常数
- Dielectric Constant $epsilon/epsilon_0 = 1 + chi_e = epsilon_r$ 相对介电常数
- Molecular Polarizability $gamma_"mol"$ 分子极化率
- Susceptibility (macroscopic parameter) $chi_e$ 电极化率
- Electric Polarization $vb(P)$ 电极化矢量
- Average molecular dipole moment $expval(vb(p)) = vb(P)/N$ 分子平均偶极矩
- Dipole moment $vb(p)=vb(P) Delta V$ 偶极矩

== Molecular Polarizability and Electric Susceptibility 分子极化率和电极化率

=== Molecular Polarizability 分子极化率 $gamma_"mol"$

定义为平均分子偶极矩与分子处电场$ε_0$的比值：
$
gamma_"mol" = expval(vb(p)_"mol")/(ε_0(E+E_i))
$
其中，$E$是平均宏观场，$E_i$是通过邻近分子的极化产生内场，$expval(vb(p)_"mol")$是分子的平均偶极矩
$
expval(vb(p)_"mol") = vb(P)/N
$
其中，$N$是单位体积内分子的平均数量。
$
E_i = E_"near" - E_P = E_P
$
其中 $E_"near"$ 是附近分子的实际贡献，对于大多数材料，$E_"near" ≈ 0$；$E_P$ 是附近分子的平均贡献。

=== Clausius-Mossotti Equation

对于一个宏观上很小，但微观上很大的体积 $V$（半径为 $R$ 的球体）来说：
$
vb(p) = (4 pi R^3)/(3) vb(P)
$
由于
$
integral_(r<R) vb(E) (vb(x)) dd(x,3) = - vb(p)/(3 epsilon_0)
$
有
$
vb(E)_P = 3/(4 pi R^3) integral_(r<R)vb(E) dd(x,3) = - 3/(4 pi R^2) vb(p)/(3 epsilon_0) = - vb(P)/(3 epsilon_0)
$
而
$
vb(P) = N expval(vb(p)_"mol") = N gamma_"mol" epsilon_0 (vb(E)+vb(E)_i)\
vb(E)_i = - vb(E)_P = vb(P)/(3 epsilon_0)
$
则有
$
vb(P) = N gamma_"mol" epsilon_0 (vb(E) + vb(P)/(3 epsilon_0))\
vb(P) = epsilon_0 chi_e vb(E)
$
则有
$
chi_e = (N gamma_"mol")/(1 - 1/3 N gamma_"mol")
$
结合 $epsilon = epsilon_0 (1 + chi_e)$，得到
$
gamma_"mol" = 3/N ((epsilon/epsilon_0 -1)/(epsilon/epsilon_0 + 2))
$

== Models for Electric Polarizability 电极化率模型

=== Two ways of the polarization of a collection of atoms or molecules

- 外加电场会扭曲电荷分布，从而在每个分子中产生感应偶极矩。

#figure(
  image("pic/2024-11-01-01-04-08.png", width: 80%),
  numbering: none,
)

- 外加磁场会使分子最初随机定向的永久偶极矩排列成直线。

#figure(
  image("pic/2024-11-01-01-08-30.png", width: 80%),
  numbering: none,
)

=== Model of Harmonically Bound Charges (First Way) 谐振电荷模型

恢复力：
$
vb(F) = - m omega_0^2 vb(x)
$
在电场 $vb(E)$ 的作用下，电荷从平衡状态移出 $vb(x)$，移出量为
$
m omega_0^2 vb(x) = e vb(E)
$
感应偶极矩
$
vb(p)_"mol" = e vb(x) = e^2/(m omega_0^2) vb(E)
$
分子极化性
$
gamma_"mol" = e^2/(m omega_0^2 epsilon_0)
$

#figure(
  image("pic/2024-11-01-01-16-47.png", width: 40%),
  numbering: none,
)

#figure(
  image("pic/2024-11-01-01-17-35.png", width: 60%),
  numbering: none,
)

=== Model of Orientation

#figure(
  image("pic/2024-11-01-01-19-19.png", width: 80%),
  numbering: none,
)

平均偶极矩为
$
expval(vb(p)_"mol") = 1/3 p_0^2/(k T) vb(E)
$
$p_0$：假定所有分子都拥有的永久偶极矩
$
gamma_"mol" = 1/(3 epsilon_0) p_0^2/(k T)
$

=== Summary of Molecular Polarization

一般来说，"诱导 "和 "定向 "两种偏振都存在。

分子极化的一般形式：
$
gamma_"mol" = gamma_i + 1/(3 epsilon_0) p_0^2/(k T)
$

== Electrostatic Energy in Dielectric Media 电介质中的静电能

=== The Energy of a System of Charge in Free Space:

$
W = 1/2 integral rho Phi dd(tau) = 1/2 integral epsilon_0 E^2 dd(tau)
$
- 在无穷大的表面上，电势为零
- 电荷的最终形态是由各元素电荷一点一点组合而成的，每个元素电荷都是在现有电场的作用下，从无限远的地方带过来的。

=== The Energy of Dielectric Media

- 将真实（宏观）电荷带入其位置
- 在介质中产生某种极化状态

#figure(
  image("pic/2024-11-01-01-25-58.png", width: 30%),
  numbering: none,
)

Small energy change $δ W$ due to $δ ρ$
$
delta W = integral delta rho(vb(x)) Phi(vb(x)) dd(x,3)
$
其中
$
delta rho = div (delta vb(D))\
delta W = integral div (delta vb(D)) Phi dd(x,3) = integral div(Phi delta vb(D)) dd(x,3) - grad Phi dot  delta vb(D) dd(x,3) = integral.cont (Phi delta vb(D)) dot dd(vb(a)) + integral vb(E) dot delta vb(D) dd(x,3)
$
从而
$
delta W = integral vb(E) dot delta vb(D) dd(x,3)
$
从而
$
W = integral dd(x,3) integral_0^vb(D) vb(E) dot dd(vb(D))
$
线性电介质中
$
vb(E)dot delta vb(D) = 1/2 delta (vb(E) dot vb(D))
$
则有
$
W = 1/2 integral vb(D) dot vb(E) dd(x,3)\
W = 1/2 integral rho(vb(x)) Phi(vb(x)) dd(x,3)
$
仅适用于线性介质。

=== Energy Change Induced by a Dielectric Object with a Linear Response for Fixed Sources of the Field 由线性响应的电介质物体引起的能量变化

#figure(
  image("pic/2024-11-01-01-48-39.png", width: 30%),
  numbering: none,
)
初始静电能量：
$
W_0 = 1/2 integral vb(E)_0 dot vb(D)_0 dd(x,3)
$
$E_0$：电荷$ρ_0(x)$在电感应强度$ε_0$（$ε_0$并非真空的电感应强度）介质中的一定分布所产生的初始场，$D_0 = ε_0 E_0$。

将体积为 $V_1$ 的电介质物体引入场后，场从 $E_0$ 变为 $E$。假设体积$V_1$内的$ε(vb(x))$为$ε_1$，它从$ε_1$快速但连续地下降到边缘处的$ε_0$。在体积 $V_1$ 外部，电感应强度为 $ε_0$ 。

引入介质物体后的静电能量
#figure(
  image("pic/2024-11-01-01-43-17.png", width: 100%),
  numbering: none,
)

=== Energy Change Induced by a Dielectric Object with a Linear Response for Fixed Potentials of the Electrodes 由线性响应的电介质物体引起的能量变化

#figure(
  image("pic/2024-11-01-01-48-59.png", width: 40%),
  numbering: none,
)

由于宏观电荷密度发生某种变化 $δ ρ$ 而导致的能量变化：
$
delta W = integral delta rho(vb(x)) Phi(vb(x)) dd(x,3)\
W = 1/2 integral rho(vb(x)) Phi(vb(x)) dd(x,3)
$
线性电介质中
$
delta W = 1/2 integral (delta rho Phi + rho delta Phi) dd(x,3)
$
如果介电特性不变：$ε(x)$ 不变
$
integral (delta rho Phi) dd(x,3) = integral (rho delta Phi) dd(x,3)
$
如果将$ρ$解释为由自由电荷密度和极化电荷密度组成，则上述积分相等关系始终成立。

#figure(
  image("pic/2024-11-01-01-52-01.png", width: 80%),
  numbering: none,
)

=== Force acting on a Dielectric Object 作用在电介质物体上的力

以 $F_e$ 的力将电介质拉出无限小距离 $dd(ξ)$ 所需的功
$
dd(W) = F_e dd(ξ)
$
$F_e$ 是抵消作用在电介质上的电场力 $F_ξ$ 所需的力：
$
F_ξ = - F_e = - dd(W)/dd(ξ)
$
在不需要对最终产生电场力的边缘场有任何了解的情况下，可以计算出这个力。

#problem[

Suppose you have enough linear dielectric material, of dielectric constant $ε_r$, to half-fill a parallel-plate capacitor. By what fraction is the capacitance increased when you distribute the material as in (a) and (b)?

]

#solution[

没有电介质：
$
C = epsilon_0 A/d
$


#figure(
  image("pic/2024-11-01-01-57-20.png", width: 100%),
  numbering: none,
)
]

#problem[

Calculate the force on the dielectric in the case of a slab of linear dielectric material partially inserted between the plates of a parallel-plate capacitor.

]

#solution[

#figure(
  image("pic/2024-11-01-02-01-19.png", width: 90%),
  numbering: none,
)

#figure(
  image("pic/2024-11-01-02-03-07.png", width: 80%),
  numbering: none,
)

- 用 $delta W_V = - F_x delta x$（ $V$ 不变）来计算力是不对的
- $delta W_V = -delta W_Q$
- 电介质体上的电场力与电介质体的微小位移 $δ x$
  $
  F_x = - (pdv(W,x))_Q = + (pdv(W,x))_V
  $
  两个电场力的方向仍然相同。

]

#figure(
  image("pic/2024-11-01-02-06-34.png", width: 80%),
  numbering: none,
)