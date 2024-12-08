#import"@preview/physica:0.9.2":*
#import "template.typ": *

= 磁场 Magnetostatics, Faraday’s Law, Quasi-static fields

== Induction

=== Magnetic-Flux Density/Magnetic Induction B 磁通密度、磁感应强度

磁通密度 $vb(B)$ 的大小由施加在磁偶极子上的力矩 $vb(N)$ 定义：
$
vb(N) = mu times vb(B)
$
其中$mu$是磁偶极子的磁矩。

#figure(
  image("pic/2024-11-06-10-11-32.png", width: 80%),
  numbering: none,
)

=== Continuity Equation 连续性方程

$
pdv(rho,t) + div vb(J) = 0
$

Steady-State Magnetic Phenomena 稳态磁现象

$
div vb(J) = 0
$

== Biot and Savart Law

=== Biot and Savart Law

$
dd(vb(B)) = k I (dd(vb(l)) times vb(x))/abs(vb(x))^3, k = mu_0/(4 pi)
$
只有作为连续集合上和的一个元素才有意义，和表示电流回路或电路的磁感应强度。

#figure(
  image("pic/2024-11-06-10-19-15.png", width: 30%),
  numbering: none,
)

=== Magnetic induction produced by one charge

$
I dd(l) = dd(q) dot vb(v)
$

则有

$
vb(B) = k q (vb(v) times vb(x))/abs(vb(x))^3
$

#problem[

Magnetic induction produced by one long straight wire carrying the current $I$.
]

#solution[

#figure(
  image("pic/2024-11-12-13-45-19.png", width: 60%),
  numbering: none,
)

$
abs(vb(B)) = integral_(-oo)^oo k I (sqrt(R^2+z^2) sin theta)/(R^2+z^2)^(3/2) dd(z) = k I R integral_(-oo)^oo 1/(R^2+z^2)^(3/2) dd(z) = mu_0/(2pi) I/R
$

]
=== Magnetic Field Force 磁场力

电流元 $I_1dd(vb(l)_1)$ 在磁感应强度 $vb(B)$ 作用下所受到的力：
$
dd(vb(F)) = I_1 dd(vb(l)_1) times vb(B)
$
由此可以得到Lorentz力：
$
dd(vb(F)) = (I_1 dd(t) )dd(vb(l)_1)/dd(t)  times vb(B) = dd(q) (vb(v) times vb(B))
$

电流 $l_1$ 的闭合电流回路 \#1 在闭合电流回路 \#2 产生的外场 $vb(B)$ 中受到的总力：
$
dd(vb(B)) = k I_2 (dd(vb(l)_2) times vb(x))/abs(vb(x)_12)^3
$
#figure(
  image("pic/2024-11-12-13-59-59.png", width: 30%),
  numbering: none,
)
$
vb(F)_12 = mu_0/(4pi) I_1 I_2 integral.cont integral.cont (dd(vb(l)_1) times (dd(vb(l)_2) times vb(x)_12))/abs(vb(x)_12)^3
$
由于
$
vb(A)times(vb(B)times vb(C)) = vb(B) (vb(A) dot vb(C)) - vb(C) (vb(A) dot vb(B))
$
所以
$
vb(F)_12 &= mu_0/(4pi) I_1 I_2 integral.cont integral.cont (dd(vb(l)_1) times (dd(vb(l)_2) times vb(x)_12))/abs(vb(x)_12)^3\
&= mu_0/(4pi) I_1 I_2 integral.cont integral.cont (-(dd(vb(l)_1) dot dd(vb(l)_2)) vb(x)_12 + (dd(vb(l)_1) dot vb(x)_12) dd(vb(l)_2))/abs(vb(x)_12)^3
$
而
$
integral.cont  (dd(vb(l)_1) dot vb(x)_12)/abs(vb(x)_12)^3 = integral.cont dd(x_12)/abs(vb(x)_12)^2 = 0
$
所以
$
vb(F)_12 = - mu_0/(4pi) I_1 I_2 integral.cont integral.cont ((dd(vb(l)_1) dot dd(vb(l)_2)) vb(x)_12)/abs(vb(x)_12)^3
$

#problem[

Calculate the force between two long, parallel, straight wires a distance $d$ apart, carrying currents $I_1$ and $I_2$.
]

#solution[

在相距 $d$ 的另一根直导线的位置上，一根长直导线携带电流 $I_2$ 产生的磁感应强度：
$
abs(vb(B)) = mu_0/(2pi) I_2/d
$
而
$
dd(vb(F)) = I_1 dd(l) times vb(B)
$
有
$
dv(vb(F),l) = mu_0/(2pi) (I_1 I_2)/d
$

]

- 外磁流密度 $vb(B)(x)$ 中 $vb(J)(x)$ 电流分布的总作用力
$
vb(F) = integral dd(q) (vb(v) times vb(B)) = integral (vb(v) times vb(B)) rho dd(x,3) = integral vb(J) times vb(B) dd(x,3)
$
- 总扭矩
$
vb(N) = vb(r) times vb(F) = integral vb(x) times (vb(J) times vb(B)) dd(x,3)
$

== Differential Equations of Magnetostatics and Amperes Law

=== Differential Equations of Magnetostatics

由于
$
dd(vb(B)) = k I (dd(vb(l)) times vb(x))/abs(vb(x))^3
$
其中
$
I_1 dd(vb(l))_1 = dd(q)_1 dot vb(v) =rho dd(V) dot vb(v) = vb(J) dd(V)
$
则有
$
vb(B)(vb(x)) = integral mu_0/(4pi) vb(J)(vb(x)_1) times (vb(x) - vb(x)')/abs(vb(x) - vb(x)')^3 dd(x',3)
$
由于
$
curl (vb(J)(vb(x')))/abs(vb(x) - vb(x)') = vb(J)(vb(x')) times grad 1/abs(vb(x) - vb(x)') + 1/abs(vb(x) - vb(x)') curl vb(J)(vb(x'))= vb(J)(vb(x')) times grad 1/abs(vb(x) - vb(x)')
$
有
$
vb(B)(vb(x)) = mu_0/(4pi) curl integral (vb(J)(vb(x)'))/abs(vb(x) - vb(x)') dd(x',3)
$
就有
#text(fill:blue)[
$
div vb(B) = 0
$
]

再求$vb(B)$的旋度
$
curl vb(B) = mu_0/(4pi) curl curl integral (vb(J)(vb(x)'))/abs(vb(x) - vb(x)') dd(x',3)
$
由于
$
curl curl vb(A) = grad (div vb(A)) - laplacian vb(A)
$
有
$
curl vb(B) = mu_0/(4pi) grad integral div (vb(J)(vb(x)'))/abs(vb(x) - vb(x)') dd(x',3) - mu_0/(4pi) integral laplacian (vb(J)(vb(x)'))/abs(vb(x) - vb(x)') dd(x',3)
$
进一步，由于
$
div(phi vb(A)) = phi div vb(A) + vb(A) dot grad phi
$
有
$
curl vb(B) &= mu_0/(4pi) grad integral (vb(J)(vb(x)') dot grad 1/abs(vb(x) - vb(x)') dd(x',3) + 1/abs(vb(x) -vb(x)') div vb(J)(vb(x)')) dd(x',3) - mu_0/(4pi) integral vb(J)(vb(x)') laplacian 1/abs(vb(x) - vb(x)') dd(x',3)\
&= - mu_0/(4pi) integral vb(J)(vb(x)') dot grad' 1/abs(vb(x) - vb(x)') dd(x',3) + mu_0 vb(J)(vb(x))
$
而
$
integral_V f(div vb(A)) dd(tau) = - integral_V vb(A) dot (grad f) dd(tau) + integral.cont_S f vb(A) dot dd(vb(a))
$
则有
$
curl vb(B) &= mu_0/(4pi) grad integral (1/abs(vb(x) - vb(x)') bold(nabla)' dot vb(J)(vb(x)')) dd(x',3) - mu_0/(4pi) grad integral.cont_S 1/abs(vb(x) - vb(x)') vb(J)(vb(x)') dot dd(vb(a)') + mu_0 vb(J)(vb(x))\
$
由于
$
bold(nabla)' dot vb(J)(vb(x)') = 0
$
并且$vb(J)$是局部的，有
#text(fill: blue)[
$
curl vb(B) = mu_0 vb(J)
$
]

=== Ampere’s Law

#figure(
  image("pic/2024-11-12-15-48-59.png", width: 30%),
  numbering: none,
)

$
curl vb(B) = mu_0 vb(J)
$
则有
$
integral_S curl vb(B) dot dd(vb(a)) &= mu_0 integral_S vb(J) dot dd(vb(a))\
&= integral.cont_C vb(B) dot dd(vb(l))\
$
从而有
$
integral.cont_C vb(B) dot dd(vb(l)) = mu_0 I
$

#figure(
  image("pic/2024-11-12-15-59-47.png", width: 80%),
  numbering: none,
)

== Vector Potential

=== Solution of Magnetostatics Equations

$
curl vb(B) = mu_0 vb(J)\
div vb(B) = 0
$
在$vb(J)=0$的时候
$
curl vb(B) = 0 => vb(B) = - grad Phi_M
$
则有
$
laplacian Phi_M = 0
$
也可以考虑$div vb(B) = 0$，得到磁矢量势
$
vb(B) = curl vb(A)\
vb(B) = mu_0/(4pi) curl integral (vb(J)(vb(x)'))/abs(vb(x) - vb(x)') dd(x',3)
$
所以$vb(A)$有形式
$
vb(A) = mu_0/(4pi) integral (vb(J)(vb(x)'))/abs(vb(x) - vb(x)') dd(x',3) + grad Phi(vb(x))
$

*Gauge transformation 规范变换*
$
vb(A)(vb(x)) -> vb(A)(vb(x)) + grad Psi(vb(x))
$

=== Vector Potential $vb(A)$ and Its Equation under Coulomb Gauge

$
curl vb(B) = mu_0 vb(J) => curl(curl vb(A)) = mu_0 vb(J)\
grad(div vb(A)) - laplacian vb(A) = - mu_0 vb(J)
$
*Coulomb gauge*取
$
div vb(A) = 0
$
则有
$
laplacian vb(A) = - mu_0 vb(J)
$
对于无界空间
$
laplacian Psi = 0 => Psi = "Const"
$
则有
$
vb(A) = mu_0/(4pi) integral (vb(J)(vb(x)'))/abs(vb(x) - vb(x)') dd(x',3)
$

#figure(
  image("pic/2024-11-12-16-20-24.png", width: 60%),
  numbering: none,
)

== Vector Potential and Magnetic Induction for a Circular Current Loop

#problem[

Solve the vector potential and magnetic induction for a circular loop of radius $a$, lying in the x-y plane, centered at the origin, and carrying a current $I$.
]

#solution[

#figure(
  image("pic/2024-11-12-16-25-05.png", width: 90%),
  numbering: none,
)

#figure(
  image("pic/2024-11-12-16-31-05.png", width: 90%),
  numbering: none,
)

]

#figure(
  image("pic/2024-11-12-16-31-56.png", width: 90%),
  numbering: none,
)
可以类似电偶极子来定义磁偶极子
$
m = I pi a^2
$
局部电流会在远距离产生偶极子场。

#figure(
  image("pic/2024-11-12-16-39-59.png", width: 90%),
  numbering: none,
)

#figure(
  image("pic/2024-11-12-16-40-35.png", width: 60%),
  numbering: none,
)

$
B_r& = mu_0/(2pi) (I pi a^2) (cos theta)/r^3\
B_theta &= mu_0/(4pi) (I pi a^2) (sin theta)/r^3
$

- Electric Field Produced by One Ring of Charge of Radius a and Total Charge $Q$

#figure(
  image("pic/2024-11-12-16-48-08.png", width: 80%),
  numbering: none,
)

== Magnetic Fields of a Localized Current Distribution, Magnetic Moment

=== Magnetic Fields of a Localized Current Distribution

$
vb(A)(vb(x)) = mu_0/(4pi) integral (vb(J)(vb(x)'))/abs(vb(x) - vb(x)') dd(x',3)
$
利用Taylor展开
$
1/abs(vb(x) - vb(x)') = 1/abs(vb(x)) + (vb(x) dot vb(x'))/abs(vb(x))^3 + O(1/abs(vb(x))^3)
$
则有
$
A_i (vb(x)) = mu_0/(4 pi) (1/abs(vb(x)) integral J_i (vb(x)') dd(x',3) + vb(x)/abs(vb(x))^3 dot integral J_i (vb(x)') vb(x)' dd(x',3) +...)
$
先考虑一个恒等式
$
integral(f vb(J) dot grad g + g vb(J) dot grad f + f g div vb(J)) dd(x,3) = 0
$
而
$
vb(x) dot integral vb(x)' J_i dd(x',3)  &= sum_j x_j integral x'_j J_i dd(x',3) = x_j integral x'_j J_i dd(x',3) + x_k integral x'_k J_i dd(x',3)
$
在恒等式中，令$f=g=x_j$，再注意$div vb(J)=0$则有
$
integral x'_j J_i dd(x',3) = 0
$
所以上式成立，进一步令$f=x_i,g=x_j$，则有
$
integral( x'_i J_j + x'_j J_i )dd(x',3) = 0
$
从而有
$
vb(x) dot integral vb(x)' J_i dd(x',3)  &= -1/2 x_j integral (x'_i J_j - x'_j J_i) dd(x',3) - 1/2 x_k integral (x'_i J_k - x'_k J_i) dd(x',3)\
&= -1/2 x_j integral (vb(x)' times vb(J))_k dd(x',3) + 1/2 x_k integral (vb(x)' times vb(J))_j dd(x',3)\
&= 1/2 sum_(j,k) epsilon_(i j k) x_j integral (vb(x)' times vb(J))_k dd(x',3)\
&= 1/2 (vb(x) times integral (vb(x)' times vb(J)) dd(x',3))_i
$
其中$epsilon_(i j k)$是Levi-Civita符号，矢量叉乘$vb(a)times vb(b)$可以写成
$
(vb(a) times vb(b))_i = sum_i a_i vu(e)_i times sum_j b_j vu(e)_j = sum_(i,j,k) epsilon_(i j k) a_i b_j vu(e)_k
$
在恒等式中，令$f=1,g=x_1$得到
$
integral J_i (vb(x)') dd(x',3) = 0
$
也就是说，磁矢量势$vb(A)$的第一项为0，从第二项开始有意义；远离任何局部电流分布的矢量电势的近似
$
A_i (vb(x)) = - mu_0/(8pi) 1/abs(vb(x))^3 (vb(x) times integral (vb(x)' times vb(J)) dd(x',3))_i
$
定义*Magnetic Moment Density/Magnetization 磁矩密度/磁化强度*
$
vb(M)(vb(x)) = 1/2 vb(x) times vb(J)(vb(x))
$
和*Magnetic Dipole Moment 磁偶极矩*
$
vb(m) = 1/2 integral vb(x) times vb(J)(vb(x)) dd(x,3)
$
则有
$
vb(A)(vb(x)) = mu_0/(4 pi) (vb(m) times vb(x))/abs(vb(x))^3
$
- 远离任何局部电流分布的*磁感应强度*
  $
  vb(A)(vb(x)) = mu_0/(4 pi) (vb(m) times vb(x))/abs(vb(x))^3\
  vb(B) = curl vb(A)
  $
  从而有
  $
  vb(B)(vb(x)) = mu_0/(4 pi) (3 vu(n)(vb(m) dot vb(n)) - vb(m))/abs(vb(x))^3
  $
  在远离任何局部电流分布的地方，磁感应是磁偶极子的磁感应。

  如果 $vb(m) = m vu(z)$则磁矢量势为
  $
  vb(A) = mu_0/(4pi) (m sin theta)/r^2 vu(phi)\
  vb(B) = curl vb(A) = (mu_0 m)/(4pi r^3) (2 cos theta vu(r) + sin theta vu(theta))
  $
- 限制在平面内的电流环的*磁矩*
  $
  vb(m) = 1/2 integral vb(x) times vb(J)(vb(x)) dd(x,3)
  $
  其中
  $
  I dd(vb(l)) = dd(q) dot vb(v) = rho dd(V) dot vb(v) = vb(J) dd(V)
  $
  有
  $
  vb(m) = I/2 integral vb(x) times dd(vb(l))
  $
  而
  $
  1/2 abs(vb(x) times dd(vb(l))) = dd(a)
  $
  从而有
  $
  abs(vb(m)) = I times "Area"
  $
- 若干带电粒子的*磁矩*
  $
  vb(m) = 1/2 integral vb(x)' times vb(J)(vb(x)') dd(x',3)
  $
  其中
  $
  rho(vb(x)')= sum_i q_i delta(vb(x)' - vb(x)_i)\
  vb(J)(vb(x)') = sum_i q_i vb(v)_i delta(vb(x)' - vb(x)_i)
  $
  从而有
  $
  vb(m) = 1/2 sum_i q_i vb(x)_i times vb(v)_i
  $
  由于角动量
  $
  vb(L)_i = M_i vb(x)_i times vb(v)_i
  $
  就有
  $
  vb(m) = sum_i q_i/(2 M_i) vb(L)_i = e/(2M) vb(L)
  $
  即使在原子尺度上，轨道运动也是如此。

=== True Field of a Magnetic Dipole

局部电流分布的磁场体积积分$vb(J)(vb(x))$
$
integral_(r<R) vb(B)(vb(x)) dd(x,3) = (2mu_0)/3 vb(m)
$
对所有电流在球内，其中$vb(m)$是总的磁偶极矩
$
vb(m) = 1/2 integral vb(x) times vb(J)(vb(x)) dd(x,3)
$
并且有
$
integral_(r<R) vb(B)(vb(x)) dd(x,3) = (4pi R^3)/3 vb(B)(vb(0))
$
对所有电流在球外。

从而可以得到“真实”磁场
$
vb(B)(vb(x)) = (mu_0)/(4pi)( (3 vu(n) (vb(m) dot vb(n)) - vb(m))/abs(vb(x))^3+(8pi)/3 vb(m) delta(vb(x)) )
$

== Force and Torque on and Energy of a Localized Current Distribution in an External Magnetic Induction 外磁感应器中局部电流分布的力和扭矩及能量

=== Total Force on One Current Distribution of $vb(J)(vb(x))$ in an External Magnetic-Flux Density $vb(B)(vb(x))$ 外磁通密度$vb(B)(vb(x))$中局部电流分布$vb(J)(vb(x))$的总力

$
vb(F) = integral vb(J)(vb(x)) times vb(B)(vb(x)) dd(x,3)
$
其中
$
B_k (vb(x)) =  B_k (0) + vb(x) dot grad B_k (0) + ...
$
从而
$
F_i = sum_(j,k) epsilon_(i,j,k) (B_k (0) integral J_j (vb(x)') dd(x',3) + integral J_j (vb(x)') vb(x)' dot grad B_k (0) dd(x',3) + ...)
$
其中
$
integral J_j (vb(x)') dd(x',3) = 0\
vb(x) dot integral vb(x)' J_j dd(x',3) = -1/2 (vb(x) times integral vb(x)' times vb(J) dd(x',3))_j = -(vb(x) times vb(m))_j\
=> grad B_k (0)  dot integral vb(x)' J_j dd(x',3) = (vb(m) times grad B_k (0))_j = (vb(m) dot grad)_j B_k (0)
$
就有
$
F_i = sum_(j,k) epsilon_(i,j,k) (vb(m) times grad)_j B_k (0) 
$
得到
$
vb(F) = (vb(m) times grad) times vb(B) = grad (vb(m) dot vb(B)) - vb(m) times curl vb(B) = grad (vb(m) dot vb(B))
$
- 磁镜
  - 带电粒子倾向于被高磁通密度区域排斥，与其电荷的符号无关。
  - 带电粒子的圆周运动可视为等同于电流的圆环，其磁矩为 $I times "面积"$。
  - $m dot B<0$
  - 与此类似，地球的非均匀磁场也会将来自太阳的带电粒子困在地球周围被称为Van Allen辐射带的甜甜圈形状区域。
  #figure(
    image("pic/2024-11-13-16-51-12.png", width: 80%),
    numbering: none,
  )

=== Total Torque on One Current Distribution of $vb(J)(vb(x))$ in an External Magnetic-Flux Density $vb(B)(vb(x))$ 外部磁通密度 $vb(B)(vb(x))$ 中 $vb(J)(vb(x))$ 电流分布的总扭矩

$
vb(N) = integral vb(x)' times (vb(J)(vb(x)') times vb(B)(vb(x)')) dd(x',3)
$
其中Taylor展开
$
B_k (vb(x)) = B_k (0) + vb(x) dot grad B_k (0) + ...
$
有
$
vb(N) &= integral vb(x)' times (vb(J) times vb(B)(0)) dd(x',3)\
&= integral ((vb(x)' dot vb(B)(0))vb(J)-(vb(x)'dot vb(J))vb(B)(0)) dd(x',3)
$
由于
$
integral x'_i J_j dd(x',3) = 0\
$
第二项为0，而第一项
$
vb(N) &=integral (vb(x)' dot vb(B)(0))vb(J) dd(x',3)\
&= vb(m) times B(0)
$

=== Potential Energy of One Current Distribution of $vb(J)(vb(x))$ in an External Magnetic-Flux Density $vb(B)(vb(x))$ 外部磁通密度 $vb(B)(vb(x))$ 中 $vb(J)(vb(x))$ 电流分布的势能

$
vb(F) = - nabla U
$
从而得到
$
U = - vb(m) dot vb(B)
$
- $U$并非外部磁场中磁矩的总能量，它不包含产生 $vb(m)$ 和保持 $vb(m)$ 恒定所需的能量。
- 偶极子倾向于在势能最低的位置与磁场平行。当 $vb(m)$ 和 $vb(B)$ 在同一方向时， $U$ 最低。

== Macroscopic Equations, Boundary Conditions on $B$ and $H$ 宏观方程，磁感应强度 $B$ 和 磁场强度 $H$ 的边界条件

原子电子产生的有效原子电流和固有磁矩会产生偶极子场，这些偶极子场在原子尺度上有明显的变化。

=== Macroscopic Equations 宏观方程

$
div vb(B)_"micro" = 0 =>_"averaging" div vb(B) = 0\
vb(B) = curl vb(A)
$
其中
$
A_i (vb(x)) = mu_0/(4pi) (1/abs(vb(x)) integral J_i (vb(x)') dd(x',3) + vb(x)/abs(vb(x))^3 dot integral J_i (vb(x)') vb(x)' dd(x',3) + ...)\
vb(A) = mu_0/(4pi) (vb(m) times vb(x))/abs(vb(x))^3
$
小体积 $Δ V$ 在 $vb(x)'$ 点产生的矢量势：
$
Delta vb(A)(vb(x)) = mu_0/(4pi) ((vb(J)(vb(x)') times Delta V)/abs(vb(x) - vb(x)') + (vb(M)(vb(x)') times (vb(x) - vb(x)'))/abs(vb(x) - vb(x)')^3 Delta V)
$
宏观上
$
vb(A) (vb(x)) = m_0/(4pi) integral (vb(J)(vb(x)'))/abs(vb(x) - vb(x)') dd(x',3)
$
其中
$
vb(M)(vb(x)) = sum_i N_i expval(vb(m)_i)
$
$vb(M)$是磁矩密度Magnetic Moment Density/Magnetization（宏观），$N_i$是单位体积内$i$型分子的平均数量。
$
vb(A)(vb(x)) = mu_0/(4pi) integral ((vb(J)(vb(x)'))/abs(vb(x) - vb(x)') + (vb(M)(vb(x)') times (vb(x) - vb(x)'))/abs(vb(x) - vb(x)')^3) dd(x',3)
$
注意到
$
grad' 1/abs(vb(x) - vb(x)') = vb(x - vb(x)')/abs(vb(x) - vb(x)')^3\
curl(psi vb(a)) = psi curl vb(a) + grad psi times vb(a)
$
则有
$
vb(A)(vb(x)) = mu_0/(4pi) integral (vb(J)(vb(x)')+grad'times vb(M)(vb(x)'))/abs(vb(x) - vb(x)') dd(x',3)
$
而
$
vb(A) = mu_0/(4pi) integral (vb(J)(vb(x)'))/abs(vb(x) - vb(x)') dd(x',3)
$
就有
$
curl vb(B) = mu_0(vb(J)+curl vb(M))
$
定义磁场强度$vb(H)$
$
vb(H) = vb(B)/mu_0 - vb(M)
$
就有
$
curl vb(H) = vb(J)
$
$vb(J)_M$是有效电流密度Effective current density
$
vb(J)_M = curl vb(M)
$
$vb(J)_b$是有效表面电流密度Effective surface current density
$
vb(J)_b = vb(M) times vu(n)
$

#figure(
  image("pic/2024-11-13-19-38-18.png", width: 40%),
  numbering: none,
)

#figure(
  image("pic/2024-11-19-16-44-14.png", width: 40%),
  numbering: none,
)

- 磁化不均匀时会产生内电流。
- 在两部分连接的表面上有净电流。

得到宏观方程
$
div vb(B) = 0\
curl vb(H) = vb(J)\
$
这和静电场的方程
$
div vb(D) = rho\
curl vb(E) = 0
$
是类似的。
- 磁感应强度$vb(B)$和电场强度$vb(E)$是基本的场
- 磁场强度$vb(H)$和电位移$vb(D)$是宏观的场：引入是为了平均考虑原子电荷和电流的贡献

=== Constitutive relation between $vb(H)$ and $vb(B)$

- 适用于各向同性的二磁性和顺磁性物质：
$
vb(B) = mu vb(H)
$
其中$mu$是磁导率，对
$
mu cases(
  > mu_0 & "paramagnetic，顺磁性",\
  < mu_0 & "diamagnetic，抗磁性",\
)
$

- 适用于铁磁性物质：

#figure(
  image("pic/2024-11-19-17-06-56.png", width: 60%),
  numbering: none,
)

=== Boundary Conditions at Interfaces Between Different Media 不同介质之间的界面条件

取无限小Gauss面
$
integral.cont_S vb(B) dot dd(vb(a)) = integral.cont_S vb(B) dot vu(n)_(21) dd(a) = (vb(B)_2 - vb(B)_1) dot vu(n)_(21) Delta a = 0
$

#figure(
  image("pic/2024-11-19-17-11-24.png", width: 40%),
  numbering: none,
)

无限小Stokes环
$
integral.cont_C vb(H) dot dd(vb(l)) = (vu(t) times vu(n)_21) dot (vb(H)_2 - vb(H)_1) Delta l = (vu(n)_21 times (vb(H)_2 - vb(H)_1)) dot vu(t) Delta l\
curl vb(H) = vb(J) => integral.cont_C vb(H) dot dd(vb(l)) = integral_S vb(J) dot dd(vb(a)) = integral_S vb(J) dot vu(t) dd(a) = vb(J)_S dot vu(t) Delta l
$
从而有
$
(vu(n)_21 times (vb(H)_2 - vb(H)_1)) = vb(J)_S
$
所以对线性介质有边界关系
$
vb(B)_2 dot vu(n) = vb(B)_1 dot vu(n)\
vb(B)_2 times vu(n) = mu_2/(mu_1) vb(B)_1 times vu(n)\
$
或者
$
vb(H)_2 dot vu(n) = mu_1/(mu_2) vb(H)_1 dot vu(n)\
vb(H)_2 times vu(n) = vb(H)_1 times vu(n)
$

#figure(
  image("pic/2024-11-19-17-28-38.png", width: 40%),
  numbering: none,
)

- 高磁导率材料表面的$vb(H)$与导体表面的电场相同：$H_(2 perp) >> H_(1 perp)$
- 应用：在磁铁设计问题中，磁极面被塑造成等势面。

#problem[Boundary conditions for the field components at the smooth interface of a highly permeable medium and a nonpermeable one.]

#figure(
  image("pic/2024-11-19-17-38-21.png", width: 80%),
  numbering: none,
)

#figure(
  image("pic/2024-11-19-17-38-57.png", width: 90%),
  numbering: none,
)

== Methods of Solving Boundary-Value Problems in Magnetostatics 磁静电学边值问题的求解方法

=== Generally applicable method of the vector potential $vb(A)$

$
curl vb(H) = vb(J)\
curl (1/mu curl vb(A)) = vb(J)\
grad(div vb(A)) - laplacian vb(A) = mu vb(J)
$
取Coulomb Gauge
$
laplacian vb(A) = - mu vb(J)
$

=== $vb(J)=0$ magnetic scalar potential $Phi_M$

$
div vb(B) = 0\
curl vb(H) = 0
$
则令
$
vb(H) = - grad Phi_M
$
则有
$
laplacian Phi_M = 0
$

=== Hard ferromagnets ($vb(M)$ given and $vb(J)=0$)

具有与外加磁场无关的固定磁化强度，$mu$不一定是常数

==== Scalar potential for hard ferromagnets

$
div vb(B) = mu_0 div (vb(H) + vb(M)) = 0\
curl vb(H) = 0 => vb(H) = - grad Phi_H
$
就有
$
laplacian Phi_H = div vb(M) = - rho_M
$
其中$rho_M$是Effective magnetic-charge density

从而
$
Phi_M (vb(x)) = - 1/(4pi) integral (div' vb(M)(vb(x)'))/abs(vb(x) - vb(x)') dd(x',3)
$
在$x' = 0$附近展开，如果$vb(M)$是局部的，并且$abs(vb(x)) >> abs(vb(x)')$，在No boundary surfaces的情况下，则有
$
Phi_M (vb(x)) = (vb(m) dot vb(x))/(4 pi r^3), vb(m) = integral vb(M)(vb(x)') dd(x',3)
$

虽然如此，但我们要处理的是体积为 $V$、表面为 $S$ 的"硬"铁磁体。$M(x)$ 在表面 $S$ 处突然降为零。

有效磁表面电荷密度：
$
sigma_M (vb(x)) = vu(n) dot vb(M)(vb(x))
$
从而有
$
Phi_M (vb(x)) = - 1/(4pi) integral (div' vb(M) (vb(x)'))/abs(vb(x) - vb(x)') dd(x',3) + 1/(4pi) integral.cont_S (vu(n)' dot vb(M)(vb(x)'))/abs(vb(x) - vb(x)') dd(a')
$
如果$vb(M)$是均匀的
$
Phi_M (vb(x)) = 1/(4pi) integral.cont_S (vu(n)' dot vb(M)(vb(x)'))/abs(vb(x) - vb(x)') dd(a')
$

==== Vector potential for hard ferromagnets

$
curl vb(B) = mu_0 (vb(J) + curl vb(M))\
vb(B) = curl vb(A)
$
取Coulomb Gauge，则有
$
laplacian vb(A) = - mu_0 vb(J)_M , vb(J)_M = curl vb(M)
$
其中$vb(J)_M$是Effective magnetic-current density

同上也可以得到，在没有边界的情况下
$
vb(A) = mu_0/(4pi) integral (curl' vb(M)(vb(x)'))/abs(vb(x) - vb(x)') dd(x',3)
$
在有边界的情况下
$
vb(A) = mu_0/(4pi) integral (curl' vb(M)(vb(x)'))/abs(vb(x) - vb(x)') dd(x',3)+mu_0/(4pi) integral.cont_S (vb(M)(vb(x)') times vu(n)')/abs(vb(x) - vb(x)') dd(a')
$
如果$vb(M)$是均匀的
$
vb(A) = mu_0/(4pi) integral.cont_S (vb(M)(vb(x)') times vu(n)')/abs(vb(x) - vb(x)') dd(a')
$

#figure(
  image("pic/2024-11-19-18-23-34.png", width: 90%),
  numbering: none,
)

== Uniformly Magnetized Sphere 均匀磁化的球体

#problem[
Solve the magnetic field inside and outside one sphere (radius $a$), which has a uniform permanent magnetization $vb(M) = M_0 vu(z)$ and is embedded in a nonpermeable medium.
]

#figure(
  image("pic/2024-11-19-21-48-52.png", width: 30%),
  numbering: none,
)

#solution[

#figure(
  image("pic/2024-11-19-21-51-31.png", width: 90%),
  numbering: none,
)
$
Phi_M (vb(x)) = 1/3 M_0 a^2 r_</r_>^2 cos theta
$
其中
$
r_< = min(r,a), r_> = max(r,a)
$
- 球体内部

  $
  r_< = r, r_> = a
  $
  $
  Phi_M = 1/3 M_0 r cos theta = 1/3 M_0 z
  $
  从而有
  $
  vb(H)_"inside" = - grad Phi_M = 1/3 vb(M)
  $
  以及磁感应强度
  $
  vb(B)_"inside" = mu_0 (vb(H) + vb(M)) = 2/3 mu_0 vb(M)
  $

- 球体外部

  $
  r_< = a, r_> = r
  $
  $
  Phi_M = 1/3 M_0 a^3/r^2 cos theta = (vb(m)dot vb(x))/(4pi r^3)
  $
  其中$vb(m)$是球体的磁矩
  $
  vb(m) = 4/3 pi a^3 vb(M)
  $
  这些场不仅具有偶极特性，还接近球面。

  #figure(
    image("pic/2024-11-19-22-09-21.png", width: 40%),
    numbering: none,
  )
]


== Magnetized Sphere in an External Field; Permanent magnets 外部磁场中的磁化球体；永磁体

#problem[
Solve the magnetic field inside and outside one sphere (radius $a$), which is embedded in a uniform external field, and has a uniform magnetization $vb(M)$ to be determined.
]

#solution[

假设外部磁感应强度为
$
vb(B) = mu_0 vb(H)
$
上题中，我们可以得到磁球内的磁感应强度和磁场：
$
vb(B)_"in" = vb(B)_0 + 2/3 mu_0 vb(M)\
vb(H)_"in" = vb(B)_0/mu_0 - 1/3 vb(M)
$
- Paramagnetic or diamagnetic substance 顺磁性或二磁性物质

    $
    vb(B)_"in" = mu vb(H)_"in" => vb(M) = 3/mu_0 (mu-mu_0)/(mu+2mu_0) vb(B)_0
    $
    这和静电场中的
    $
    vb(P) = 3 epsilon_0 (epsilon - epsilon_0)/(epsilon + 2 epsilon_0) vb(E)_0
    $
    是类似的。

- Ferromagnetic substance 铁磁性物质

    $
    vb(B)_"in" + 2 mu_0 vb(H)_"in"  = 3 vb(B)_0
    $

1. 根据磁滞曲线可以得到球内的磁感应强度和磁场。
2. 如果增加 $vb(B)_0$ 直至球体饱和，然后将其降至零，则内部 $vb(B)$ 和 $vb(H)$ 将由 P 点给出。
3. 上式只适用于均匀磁化的球体。

#figure(
  image("pic/2024-11-19-22-41-50.png", width: 40%),
  numbering: none,
)
]

== Magnetic Shielding, Spherical Shell of Permeable Material in a Uniform Field 磁屏蔽，均匀场中的磁导体球壳

#problem[
Solve the magnetic field for a spherical shell of inner (outer) radius $a (b)$, made of material of permeability $μ$, and placed in a formerly uniform constant magnetic induction $vb(B)_0$.

]

#figure(
  image("pic/2024-11-19-22-51-42.png", width: 40%),
  numbering: none,
)

#solution[

#figure(
  image("pic/2024-11-19-22-52-29.png", width: 90%),
  numbering: none,
)

#figure(
  image("pic/2024-11-19-22-53-11.png", width: 90%),
  numbering: none,
)
]

== Effect of a Circular Hole in a Perfectly Conducting Plane with an Asymptotically Uniform Tangential Magnetic Field on One Side 在一侧有渐近均匀切向磁场的理想导体平面上的圆孔的效应

求解完全导电平面上圆孔附近的磁场，其近似值为一侧的均匀切向磁场。

#figure(
  image("pic/2024-11-19-22-57-55.png", width: 80%),
  numbering: none,
)

完全导电表面上的小孔对 (a) 切向磁场和 (b) 法向电场的扭曲。下面标出了从表面上方和下方观察到的有效偶极矩。

== Faraday’s Law of Induction

Faraday关于置于时变磁场中的电路中电流行为的实验。在电路中感应出瞬态电流，其中
- 相邻电路中的稳定电流接通或断开；
- 相邻电路中的稳定电流相对于第一个电路移动；
- 一块永久磁铁插入或退出电路。

=== Electromotive force 电动势 $cal(E)$

变化磁通量引起的电路周围电场的线积分
$
cal(E) = integral.cont_C vb(E)' dot dd(vb(l))
$
其中$vb(E)'$：在移动坐标系或介质中，电路 $C$ 的电流元 $dd(l)$ 处的电场，其中 $dd(l)$ 处于静止状态。

=== Faraday’s law

$
cal(E) = - k dv(F,t)
$
$F$：电路内的磁通量
$
F = integral_S vb(B) dot dd(vb(a))
$

=== Lenz’s law

感应电流（和伴随的磁通量）在这种情况下方向，与通过电路的磁通量变化相反。

=== Galilean invariance

在非相对论情况下，物理定律在Galilean变换下应该是不变的，也就是说，只要空间坐标和时间坐标通过Galilean变换相关联，相对于以恒定速度 $v$ 运动的两个观测者观察到的物理现象是相同的
$
mat(x'; t') = mat(1 , -v; 0, 1) mat(x; t)
$

#figure(
  image("pic/2024-11-19-23-09-58.png", width: 80%),
  numbering: none,
)

=== Determination of the constant $k$

$
integral.cont_C vb(E) dot dd(vb(l)) = - k dv(,t) integral_S vb(B) dot dd(vb(a))
$
其中
$
dv(,t) = pdv(,t) + vb(v) dot grad, vb(v) "is constant"\
curl (vb(B) times vb(v)) = vb(B) (div vb(v)) - (vb(v) dot grad) vb(B) + (vb(v) dot grad) vb(B) - vb(B) (div vb(v)) = 0
$
从而
$
dv(vb(B),t) = pdv(vb(B),t) + (vb(v) dot grad) vb(B) = pdv(vb(B),t) + curl (vb(B) times vb(v))\
dv(,t) integral_S vb(B) dot vu(n) dd(a) = integral_S pdv(,t) vb(B) dot vu(n) dd(a) + integral.cont_C (vb(B) times vb(v)) dot dd(vb(l))
$
带有移动电路 C 的 Faraday 定律
$
integral.cont_C (vb(E)' - k (vb(v) times vb(B))) dot dd(vb(l)) = - k integral_S pdv(vb(B),t) dot vu(n) dd(a)
$
$
integral.cont_C vb(E) dot dd(vb(l)) = - k integral_S pdv(vb(B),t) dot vu(n) dd(a)
$
其中
$
vb(E)' = vb(E) + k (vb(v) times vb(B))
$
仅当 $v<<c$ 时适用；一个运动的带电粒子所受的磁力为 $q vb(v) times vb(B)$，从而$k=1$。

- 磁通量可以通过两种方式改变：
  - 一种是改变磁感应强度；
  - 另一种是改变电路的形状、方向或位置。
- C 可以是空间中任何一条封闭的几何路径。
- $vb(E)'$ 是 $dd(vb(l))$ 在静止坐标系或介质中的电场。
- $vb(E)$ 是实验室坐标中的电场，（将电路视为实验室空间中某个位置的瞬时电场）

=== Differential form of Faraday’s law

$
integral.cont_C vb(E) dot dd(vb(l)) = - dv(,t) integral_S vb(B) dot dd(vb(a))\
vb(E)' = vb(E) + k (vb(v) times vb(B))
$
只要电路固定在实验室坐标上，就可以推导出微分形式的 Faraday 定律
$
integral.cont_C vb(E) dot dd(vb(l)) = - integral_S pdv(vb(B),t) dot dd(vb(a))\
integral_S (curl vb(E) + pdv(vb(B),t)) dot dd(vb(a)) = 0
$
得到微分形式
$
curl vb(E) + pdv(vb(B),t) = 0
$
Faraday 定律不是近似。

== Energy in the Magnetic Field

=== Energy in the Magnetic Field

磁场中的能量是建立磁场所做的总功。
$
U = - vb(m) dot vb(B)
$

必须考虑最初的瞬态期，在此期间，电流和相关磁场的稳态配置会形成。

单回路中维持电流 $I$ 的电流源所做的功
$
dv(W,t) = - I cal(E) = I dv(F,t) => delta W  =I delta F
$
建立电流和场的一般稳态分布所做的工作
$
Delta (delta W) &= J Delta sigma integral_S delta vb(B) dot vu(n) dd(a)\
&= J Delta sigma integral_S curl delta vb(A) dot vu(n) dd(a)\
&= J Delta sigma integral.cont_C delta vb(A) dot dd(vb(l))\
$
从而
$
delta W  = integral delta vb(A) dot vb(J) dd(x,3)= integral vb(H) dot delta vb(B) dd(x,3)
$
适用于所有磁性介质。

电介质中有
$
delta W = integral vb(E) dot delta vb(D) dd(x,3)
$
二者是一致的。

- 用于顺磁性和二磁性物质：
$
vb(H) dot delta vb(B) = 1/2 delta (vb(B) dot vb(H))
$
对于线性介质
$
W = 1/2 integral vb(H) dot vb(B) dd(x,3)
$
这和电介质中的能量密度
$
W = 1/2 integral vb(E) dot vb(D) dd(x,3)
$
是类似的。

而
$
delta W = integral delta vb(A) dot delta vb(J) dd(x,3)
$
也可以得到
$
W = 1/2 integral vb(A) dot vb(J) dd(x,3)
$
这和电介质中的能量密度
$
W = 1/2 integral rho Phi dd(x,3)
$
是类似的。

=== Energy Change Induced by a Permeable Object with a Linear Response for Fixed Current Sources of the Field 由磁导体引起的能量变化，对于固定电流源的场的线性响应

原始介质的磁导率为 $μ_0$ ，现有磁感应强度为 $B_0$ 。物体就位后，磁场为 $B$ 和 $H$。

可渗透物体引起的能量变化：
$
W = 1/2 integral_V_1 (vb(B) dot vb(H)_0 - vb(B)_0 dot vb(H)) dd(x,3)
$
假设 $μ_0 (x)$ 和 $μ_1 (x)$ 与场强无关
$
vb(H) = 1/mu_0 vb(B) - vb(M)\
vb(M) = (1/mu_0 - 1/mu_1) vb(B)\
W = 1/2 integral_V_1 (mu_1 - mu_0)vb(H) dot vb(H)_0 dd(x,3) = 1/2 integral_V_1 (1/mu_0 - 1/mu_1) vb(B) dot vb(H)_0 dd(x,3)
$
从而有
$
Delta W = 1/2 integral_V_1 vb(M) dot vb(B)_0 dd(x,3)
$
在电介质中有
$
Delta W = -  1/2 integral_V_1 vb(P) dot vb(E)_0 dd(x,3)
$

固定电流的磁性问题 $<=>$ 静电问题，表面上的固定电势决定了场

=== Force acting on the permeable object

$
F_xi = (pdv(W,xi))_J
$
电介质中有
$
F_xi = (pdv(W,xi))_V
$

== Energy and Self- and Mutual Inductances

=== Coefficients of Self- and Mutual Inductance 自感和互感系数

对于一个由 $N$ 个非渗透性载流电路组成的系统，其中第 $i$ 个电路的总电流为 $I_i$，在空旷的空间中，总能量可描述为
$
W = 1/2 sum_(i=1)^N L_i I_i^2 + sum_(i=1)^N sum_(j>i)^N M_(i j) I_i I_j
$
其中$L_i$是自感系数，$M_(i j)$是互感系数。

计算自感系数
$
W = 1/2 integral vb(J) dot vb(A) dd(x,3)\
vb(A) = mu_0/(4pi) integral (vb(J)(vb(x)'))/abs(vb(x) - vb(x)') dd(x',3)\
$
从而有
$
W = mu_0/(8pi) integral integral (vb(J)(vb(x)') dot vb(J)(vb(x)))/abs(vb(x) - vb(x)') dd(x',3) dd(x,3)
$
从而
$
L_i = mu_0/(4 pi I_i^2) integral integral (vb(J)(vb(x)') dot vb(J)(vb(x)))/abs(vb(x) - vb(x)') dd(x',3) dd(x,3)\
M_(i j) = mu_0/(4 pi I_i I_j) integral integral (vb(J)(vb(x)') dot vb(J)(vb(x)))/abs(vb(x) - vb(x)') dd(x',3) dd(x,3)
$

- 电感和磁通联系之间的关系
  $
  M_(i j) = 1/I_j F_(i j), L_i = 1/I_i F_(i i)
  $
  其中 $F_(i j)$ 是电路 $i$ 中的磁通量，由电路 $j$ 产生。
- 如果电路是可渗透的，或者导体之间的介质是$mu != mu_0$
  $
  W = mu_0/(8pi) integral integral (vb(J)(vb(x)') dot vb(J)(vb(x)))/abs(vb(x) - vb(x)') dd(x',3) dd(x,3)
  $
  不成立，要通过
  $
  W = 1/2 integral vb(H) dot vb(B) dd(x,3)
  $
  来计算。

#problem[Self-Inductance for Simple Circuits

Find the self-inductance of a circular wire of cross-sectional radius $a$ carrying a steady current $I$. The wire forms a loop of circumference $C$ and projected area $A$. Assuming the wire and the medium surrounding it are nonpermeable.

]

#figure(
  image("pic/2024-11-27-00-40-52.png", width: 40%),
  numbering: none,
)

#solution[

#figure(
  image("pic/2024-11-27-00-42-51.png", width: 90%),
  numbering: none,
)

#figure(
  image("pic/2024-11-27-00-43-43.png", width: 90%),
  numbering: none,
)

]