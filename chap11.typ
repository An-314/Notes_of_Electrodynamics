#import"@preview/physica:0.9.2":*
#import "template.typ": *

= Radiating Systems, Multipole Fields and Radiation

Electromagnetic Wave 电磁波
$
div vb(D) = rho\
div vb(B) = 0\
curl vb(H) = vb(J) + pdv(vb(D),t)\
curl vb(E) + pdv(vb(B),t) = 0
$
$
vb(E)(vb(x),t) = cal(E) e^(i(vb(k) dot vb(x) - omega t))\
vb(B)(vb(x),t) = cal(B) e^(i(vb(k) dot vb(x) - omega t))
$
$
(laplacian + mu epsilon omega^2) mat(vb(E); vb(B)) = 0\
$

== Fields and Radiation of a Localized Oscillating Source 点源的场与辐射

=== Localized systems of charges and currents 点源的电荷和电流系统

在这里，我们让电荷和电流随时间正弦变化。在一般情况下，这是其 Fourier 分量之一。
$
rho(vb(x),t) = rho(vb(x)) e^(- i omega t)\
vb(J)(vb(x),t) = vb(J)(vb(x)) e^(- i omega t)
$
矢量势的迟滞解
$
laplacian vb(A) - 1/c^2 pdv(vb(A),t,2) = - mu_0 vb(J)\
vb(A)(vb(x),t) = mu_0/(4 pi) integral dd(x',3) [vb(J)(vb(x'),t')]_"ret" / abs(vb(x) - vb(x'))\
vb(A)(vb(x),t) =  mu_0/(4 pi) integral dd(x',3) integral dd(t') (vb(J)(vb(x'),t'))/abs(vb(x) - vb(x')) delta(t' + abs(vb(x) - vb(x'))/c - t)\
vb(A)(vb(x),t) =  mu_0/(4 pi) integral dd(x',3) (vb(J)(vb(x')))/abs(vb(x) - vb(x')) e^(i omega (abs(vb(x) - vb(x'))/c - t))\
vb(A)(vb(x),t) =  (mu_0/(4 pi) integral dd(x',3) vb(J)(vb(x'))(e^(i k abs(vb(x)-vb(x)')))/abs(vb(x) - vb(x'))) e^(-i omega t) = vb(A)(vb(x)) e^(-i omega t)
$
其中
$
vb(A)(vb(x)) = mu_0/(4 pi) integral vb(J)(vb(x'))(e^(i k abs(vb(x)-vb(x)')))/abs(vb(x) - vb(x'))dd(x',3) 
$

=== Magnetic and Electric Fields

信号源位于原本空旷的空间中

- 磁场
$
vb(H) = 1/mu_0 curl vb(A)
$
- 电场
$
curl vb(B) = - i mu_0 epsilon_0 omega vb(E)
$
在源外$J=0$
$
vb(E) = (i Z_0)/k curl vb(H)\
Z_0 = sqrt(mu_0/epsilon_0)
$
给定电流分布$J(vb(x)')$，原则上至少可以通过上述方程确定场强。

- 如果源被限制在一个很小的区域，与我们关注的波长相比非常小。

#figure(
  image("pic/2025-01-05-02-12-33.png", width: 80%),
  numbering: none,
)

#figure(
  image("pic/2025-01-05-02-14-08.png", width: 80%),
  numbering: none,
)

#figure(
  image("pic/2025-01-05-02-14-38.png", width: 80%),
  numbering: none,
)

#figure(
  image("pic/2025-01-05-02-15-39.png", width: 80%),
  numbering: none,
)

==== The near zone: $d << r << lambda$

$
vb(A)(vb(x)) = mu_0/(4 pi) integral vb(J)(vb(x'))(e^(i k abs(vb(x)-vb(x)')))/abs(vb(x) - vb(x')) dd(x',3)\
$
$
k = omega/c = (2 pi)/lambda
$
有$k r << 1$，就有
$
vb(A)(vb(x)) = mu_0/(4 pi) integral vb(J)(vb(x'))(1)/abs(vb(x) - vb(x')) dd(x',3)\
$
而注意到
$
1/abs(vb(x) - vb(x')) = 4 pi sum_(l = 0)^oo sum_(m = -l)^l 1/(2l + 1) (r_<^l)/(r_>^(l + 1)) Y^*_(l m) (theta', phi') Y_(l m) (theta, phi)
$
有
$
lim_(k r ->0) vb(A)(vb(x)) = mu_0/(4 pi) sum_(l,m) (4 pi)/(2l+1) (Y_(l m) (theta, phi))/(r^(l+1)) integral vb(J)(vb(x')) (r'^l) Y^*_(l m) (theta', phi') dd(x',3)
$
就有
$
vb(A)(vb(x),t) = (mu_0/(4 pi) integral dd(x',3) vb(J)(vb(x')) e^(i k abs(vb(x) - vb(x')))/abs(vb(x) - vb(x'))) e^(-i omega t) = vb(A)(vb(x)) e^(-i omega t)
$
近场是准静态的，像 $e^(-i omega t)$ 一样谐振，但在其他方面是静态的。

==== The far zone: $r >> lambda$

有
$
abs(vb(x) - vb(x)') approx r - vu(n) dot vb(x)'
$
$
vb(A)(vb(x)) = mu_0/(4 pi) integral vb(J)(vb(x'))e^(i k abs(vb(x) - vb(x)'))/abs(vb(x) - vb(x')) dd(x',3)\
$
$
lim_(r k->oo) vb(A)(vb(x)) = mu_0/(4 pi) e^(i k r)/r integral vb(J)(vb(x')) e^(-i k vu(n) dot vb(x')) dd(x',3)
$

矢量势的行为就像一个出射球面波，其系数与角度有关。场将横向于半径矢量，并随着 $r^(-1)$而下降。

$
lim_(r k->oo) vb(A)(vb(x)) = mu_0/(4 pi) e^(i k r)/r integral vb(J)(vb(x')) e^(-i k vu(n) dot vb(x')) dd(x',3)\
= mu_0/(4 pi) e^(i k r)/r sum_n (-i k)^n/(n!) integral vb(J)(vb(x')) (vu(n) dot vb(x'))^n dd(x',3)
$
第$n$项的大小
$
1/n! integral vb(J)(vb(x')) (k vu(n) dot vb(x'))^n dd(x',3)
$
$x'$的数量级为$d$，而$k d<<1$时，$A$的展开式中的连续项显然会随着$n$的增大而迅速减小。辐射源发出的辐射将主要来自第一个非消失项。

==== The intermediate zone: $d << r approx lambda$

球面波格林函数的展开
$
(laplacian + k^2) G_k (vb(x), vb(x')) = - 4 pi delta(vb(x) - vb(x'))\
G_k^(plus.minus) (R) = e^(plus.minus i k R)/(R)\
(laplacian + k^2) G (vb(x), vb(x')) = - delta(vb(x) - vb(x'))\
G(vb(x), vb(x')) = e^(i k abs(vb(x) - vb(x')))/(4 pi abs(vb(x) - vb(x')))\
laplacian_x G(vb(x), vb(x')) = - 4 pi delta(vb(x) - vb(x'))\
delta(vb(x) - vb(x')) = 1/r^2 delta(r - r') delta(cos theta - cos theta') delta(phi - phi') = 1/r^2 delta(r - r') sum_(l=0)^oo sum_(m=-l)^l Y^*_(l m) (theta', phi') Y_(l m) (theta, phi)\
G(vb(x), vb(x')) = sum_(l=0)^oo sum_(m=-l)^l A_(l m) (r|r',theta',phi') Y_(l m) (theta, phi)\
A_(l m) (r|r',theta',phi') = g_l (r, r') Y^*_(l m) (theta', phi')\
1/r dv(,2)(r g_l (r,r')) - (l(l+1))/r^2 g_l (r,r') = - (4pi)/r^2 delta(r - r')\
$
#figure(
  image("pic/2025-01-05-02-36-19.png", width: 80%),
  numbering: none,
)
#figure(
  image("pic/2025-01-05-02-36-44.png", width: 80%),
  numbering: none,
)

=== The electric monopole fields 电单极场

标量势
$
Phi(vb(x),t) = 1/(4 pi epsilon_0) integral dd(x',3) integral dd(t') rho(vb(x'),t')/abs(vb(x) - vb(x')) delta(t' + abs(vb(x) - vb(x'))/c - t)
$
将单极子放在原点，有
$
Phi_"monopole" (vb(x),t) &= 1/(4 pi epsilon_0) 1/r integral dd(x',3) rho(vb(x'), t - r/c)\
&= q(t'=t-r/c)/(4 pi epsilon_0 r)
$

电荷是守恒和局部的。没有电荷流入或流出。总电荷与时间无关。

局部电荷源的电势（和电场）的单极部分是静态的。

因此，谐波时间依赖性$e^(-i omega t)$必须为$omega=0$。也就是说，对于$omega≠0$，没有单极项。

== Electric Dipole Fields and Radiation 电偶极场与辐射

Electric Dipole
$
vb(p) = integral vb(x') rho(vb(x')) dd(x',3)
$
#figure(
  image("pic/2025-01-05-02-42-31.png", width: 50%),
  numbering: none,
)

=== The electric and magnetic fields of an electric dipole 电偶极的电场和磁场

远场近似
$
lim_(r k->oo) vb(A)(vb(x)) = mu_0/(4 pi) e^(i k r)/r sum_n (-i k)^n/(n!) integral vb(p)(vb(x')) (vu(n) dot vb(x'))^n dd(x',3)
$
只保留第一项
$
vb(A)(vb(x)) = mu_0/(4pi) e^(i k r)/r integral vb(J)(vb(x')) dd(x',3)
$
$
integral vb(J)(vb(x')) dd(x',3) = - integral vb(x)' (div' vb(J)) dd(x',3) = - i omega integral vb(x') rho(vb(x')) dd(x',3) = - i omega vb(p)
$
$
vb(A)(vb(x)) = - (i mu_0 omega)/(4pi) vb(p) e^(i k r)/r 
$
场是
$
vb(H) = 1/mu_0 curl vb(A)\
vb(E) = (i Z_0)/k curl vb(H)\
Z_0 = sqrt(mu_0/epsilon_0)
$
#figure(
  image("pic/2025-01-05-02-49-15.png", width: 80%),
  numbering: none,
)

=== The electric and magnetic fields of a dipole at the radiation and near zone 电偶极在辐射区和近区的电场和磁场

代入有
$
vb(H) = (c k^2)/(4pi) (vu(n) times vb(p)) e^(i k r)/r (1-1/(i k r))\
vb(E) = 1/(4 pi epsilon_0) (k^2(vu(n) times vb(p)) times vu(n) e^(i k r)/r + (3 vu(n) (vu(n) dot vb(p)) - vb(p)) (1/r^3 - (i k)/r^2) e^(i k r))
$
- $r->oo$
$
vb(H) = (c k^2)/(4pi) (vu(n) times vb(p)) e^(i k r)/r\
vb(E) = Z_0 vb(H) times vu(n)
$
- $r->0$
$
vb(H) = (i omega)/(4 pi) (vu(n) times vb(p)) 1/r^2\
vb(E) = 1/(4 pi epsilon_0) (3 vu(n) (vu(n) dot vb(p)) - vb(p)) 1/r^3
$

=== The time-averaged power radiated by an oscillating dipole 一个振荡偶极辐射的平均功率

$
P &= integral.cont_S Re(vu(n) dot vb(S)) dd(a)\
&= (1/2) Re integral.cont_S (vb(E) times vb(H)^*) dot vu(n) dd(a)\
&= r^2/2 Re integral_S (vb(E) times vb(H)^*) dot vu(n) dd(omega)
$
有
$
dv(P,omega) &= 1/2 Re(r^2 vu(n) dot (vb(E) times vb(H)^*))\
&= 1/2 (c^2 Z_0)/(32pi^2) k^4 abs((vu(n) times vb(p)) dot vu(n))^2\
&= (c^2 Z_0)/(32pi^2) k^4 abs(vb(p) dot vu(n))^2\
&= (c^2 Z_0)/(32pi^2) k^4 abs(vb(p))^2 sin^2 theta
$
$
P = (c^2 Z_0 k^4)/(12pi^2) abs(vb(p))^2
$

#figure(
  image("pic/2025-01-05-02-57-09.png", width: 80%),
  numbering: none,
)

#figure(
  image("pic/2025-01-05-02-57-42.png", width: 80%),
  numbering: none,
)

#figure(
  image("pic/2025-01-05-02-58-04.png", width: 80%),
  numbering: none,
)

== Magnetic Dipole and Electric Quadrupole Fields 磁偶极和电四极场

#figure(
  image("pic/2025-01-05-02-58-59.png", width: 80%),
  numbering: none,
)

=== The second term of the vector potential

#figure(
  image("pic/2025-01-05-02-59-13.png", width: 80%),
  numbering: none,
)

=== The sources of the second term of the vector potential

#figure(
  image("pic/2025-01-05-02-59-36.png", width: 80%),
  numbering: none,
)

=== Fields of the magnetic dipole

#figure(
  image("pic/2025-01-05-02-59-56.png", width: 80%),
  numbering: none,
)

=== The electric quadrupole source

#figure(
  image("pic/2025-01-05-03-00-20.png", width: 80%),
  numbering: none,
)

=== The Fields of the electric quadrupole source

#figure(
  image("pic/2025-01-05-03-00-33.png", width: 80%),
  numbering: none,
)

=== The total power radiated by a quadrupole source

#figure(
  image("pic/2025-01-05-03-00-58.png", width: 80%),
  numbering: none,
)

#figure(
  image("pic/2025-01-05-03-01-12.png", width: 80%),
  numbering: none,
)

#figure(
  image("pic/2025-01-05-03-01-28.png", width: 80%),
  numbering: none,
)

#figure(
  image("pic/2025-01-05-03-01-40.png", width: 80%),
  numbering: none,
)

#figure(
  image("pic/2025-01-05-03-01-55.png", width: 80%),
  numbering: none,
)

#figure(
  image("pic/2025-01-05-03-02-16.png", width: 80%),
  numbering: none,
)