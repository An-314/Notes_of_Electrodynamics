#import"@preview/physica:0.9.2":*
#import "template.typ": *

#counter(heading).update(0)
= 概述

电动力学是关于电磁场的基本特性、运动规律以及电磁场与带电物质之间相互作用的理论。

#grid(columns: 2, rows: 20pt)[场(feild)][场论][势(potential)][规范场]

*经典电动力学简介*
1. 电磁学和电动力学简史
2. Maxwell之前的定律
3. Maxwell方程和边界条件
4. 宏观介质中的Maxwell方程
5. Helmholtz波方程和色散
6. 张量符号中的Maxwell方程
7. 经典电动力学概述

== From Coulomb’s Law to Gauss’s Law

experiments：Inverse Square Law 平方反比定律 Cavendish实验

$
"【Coulomb定律】" &E(x) = k q_1 (x-x_1)/abs(x-x_1)^3 = k q_1 1/R^2 vb(n) =>\
"多个电荷"&E(x) = 1/(4 pi epsilon_0) sum_(i=1)^n q_i (x - x_i)/abs(x - x_i)^3 =>x`\
"连续分布的电荷"& E(x) = 1/(4 pi epsilon_0) integral_V rho(x') (x - x')/abs(x - x')^3 dd(x', 3)
$

#figure(
  image("pic/2024-09-11-11-10-21.png", width: 20%),
  numbering: none,
)

对面元$dd(a)$积分
$
vb(E) dot vb(n) dd(a) = q/(4 pi epsilon_0) (cos theta)/r^2 dd(a) =^(cos theta dd(a) = r^2 dd(Omega)) q/(4 pi epsilon_0) dd(Omega) \
integral.cont_S vb(E) dot vb(n) dd(a) = 1/epsilon_0 sum_i q_i = 1/epsilon_0 integral_V rho(x) dd(x,3)\
integral_V (div E) dd(x,3) = 1/epsilon_0 integral_V rho(x) dd(x,3)\
"【Gauss定律】" div E = rho/epsilon_0
$

== From Biot and Savart Law to Ampere’s Law

$
"【Biot-Savart定律】"dd(vb(B)) = k I (dd(vb(l)) times vb(x))/abs(x)^3 
$
$
"【Amprere定律】" integral.cont_C vb(B) dot vb(l) = mu_0 I
$
$
B(x) = mu_0/(4 pi) curl integral vb(J(x'))/abs(x - x') dd(x',3) \
div vb(B) = 0\
curl vb(B) = mu_0 vb(J)
$


== From Lenz’s Law to Faraday’s Law of Induction

$
"Electromotive force" & cal(E) = integral.cont_C vb(E') dot vb(l)
$

Lenz定律：感应电流（和伴随的磁通量）的方向与通过电路的磁通量变化相反。

$
"【Faraday定律】" integral.cont_S vb(E') dot vb(l) = - k dd("")/dd(t) integral_S vb(B) dot vb(n) dd(a)\
curl vb(E) + partialderivative(vb(B), t) = 0
$

== Before Maxwell Equations


在静电、磁静电和准静态场下获得的：
$
cases(
"Coulomb’s Law" & div D = rho,
"Ampere’s Law"(curl J = 0) & curl H = J,
"Faraday’s Law" & curl E = -(partial B)/(partial t),
"Lenz’s Law" & div B = 0,
)
$
Inconsistency for time dependent fields!
$
div vb(J) = div(curl H) = 0 <=> div vb(J) + partialderivative(rho, t) = 0
$

== Maxwell Equations

Displacement Current 引入位移电流
$
div(vb(J) + partialderivative(vb(D), t)) = 0
$
得到Maxwell方程组：
$
cases(
div vb(D) = rho,
curl vb(H) = vb(J) + partialderivative(vb(D), t),
div vb(B) = 0,
curl vb(E) + partialderivative(vb(B), t) = 0
)
$
$
"【Lorentz力】" vb(F) = q (vb(E) + vb(v) times vb(B))
$
$
"【Newton’s Second Law】" dv(vb(P),t) = vb(F)
$
Maxwell预测了光是一种电磁波现象，可以产生各种频率的电磁波。

=== Boundary Conditions

#figure(
  image("pic/2024-09-11-15-34-44.png", width: 80%),
  numbering: none,
)

=== Maxwell Equations in Vacuum


- The relationship between B&H,D&E
  电介质、磁介质
- Microscopic Fields
- From Microscopic Equations to Macroscopic Equations
- Vector and Scalar Potentials
- Lorentz Gauge & Coulomb Gauge (Radiation/Transverse)
- Plane Wave in a Nonconducting Medium
- Electromagnetic Waves in Vacuum