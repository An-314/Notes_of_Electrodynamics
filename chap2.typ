#import"@preview/physica:0.9.2":*
#import "template.typ": *

= 场的数学 Vector Analysis

== 矢量 Vector Algebra

=== 矢量与标量

- Vectors: Quantities that have magnitude and direction
- Scalars: Quantities that have magnitude but no direction

=== 矢量的运算 Vector Operations

- Addition of two vectors
$
vb(A) + vb(B) &= vb(B) + vb(A)\
(vb(A) + vb(B)) + vb(C) &= vb(A) + (vb(B) + vb(C))\
vb(A) - vb(B) &= vb(A) + (-vb(B))
$
- Multiplication by a scalar
$
alpha(vb(A) + vb(B)) &= alpha vb(A) + alpha vb(B)\
$
- Dot product of two vectors
$
vb(A) dot vb(B) &= A B cos theta\
$
$vb(A) dot vb(B)$ is the product of	$vb(A)$	times	the	projection of $vb(B)$ along $vb(A)$.
$
vb(A) dprod (vb(B) + vb(C)) &= vb(A) dot vb(B) + vb(A) dot vb(C)\
vb(A) dot vb(B) &= vb(B) dot vb(A)\
$
- Cross product of two vectors
$
vb(A) times vb(B) &= A B sin theta vu(n)
$
$abs(vb(A) times vb(B))$is the area of the parallelogram generated by A and B.
$
vb(A) times vb(B) &= - vb(B) times vb(A)\
vb(A) times (vb(B) + vb(C)) &= vb(A) times vb(B) + vb(A) times vb(C)\
$

=== 坐标系下的矢量 Vector Components

$
vb(A) = A_x vu(x) + A_y vu(y) + A_z vu(z)\
vb(B) = B_x vu(x) + B_y vu(y) + B_z vu(z)\
$
- Addition
$
vb(A) + vb(B) = (A_x + B_x) vu(x) + (A_y + B_y) vu(y) + (A_z + B_z) vu(z)\
$
- Multiplication by a scalar
$
alpha vb(A) = alpha A_x vu(x) + alpha A_y vu(y) + alpha A_z vu(z)\
$
- Dot product
$
vb(A) dot vb(B) = A_x B_x + A_y B_y + A_z B_z = A_i B_i ("Einstein summation")
$
- Cross product
$
vb(A) times vb(B) = mat(
vu(x), vu(y), vu(z);
A_x, A_y, A_z;
B_x, B_y, B_z;delim: "|"
)
$

=== 标量三重积 Scalar Triple Product

$
vb(A) dot (vb(B) times C) &= vb(B) dot (vb(C)  times vb(A)) = vb(C)  dot (vb(A) times vb(B))\
&= mat(
A_x, A_y, A_z;
B_x, B_y, B_z;
C_x, C_y, C_z;delim: "|"
)
$

表示的是三个矢量构成的平行六面体的体积。

=== 矢量三重积 Vector Triple Product

$
vb(A) times (vb(B) times C) &= B(vb(A) dot C) - C(vb(A) dot B)\
$

It is never necessary to contain more than one cross product in any term， 例如：
$
(vb(A) times B) dot (vb(C)  times vb(D)  ) = (vb(A) dot vb(D)  ) (vb(B) dot C) - (vb(A) dot C) (vb(B) dot vb(D)  )\
$

=== Position and Separation Vectors

- Position Vector
$
vb(r) = x vu(x) + y vu(y) + z vu(z)\
$

- Separation (displacement) Vector
$
vb(r) - vb(r') = (x - x') vu(x) + (y - y') vu(y) + (z - z') vu(z)\
$

- Unit Vector
  - A unit vector pointing from the origin to	$vb(r)$ 
  $
  vu(r) = vb(r)/abs(vb(r)) = (x vu(x) + y vu(y) + z vu(z))/sqrt(x^2 + y^2 + z^2)\
  $
  - A unit vector pointing from	$vb(r')$ to	$vb(r)$
  $
  vu(r) = (vb(r) - vb(r'))/abs(vb(r) - vb(r')) = ((x - x') vu(x) + (y - y') vu(y) + (z - z') vu(z))/sqrt((x - x')^2 + (y - y')^2 + (z - z')^2)\
  $

=== Vector Transformation

- Transformation with the system rotated about the $x$ axis
$
mat(
overline(A)_y ; overline(A)_z;
) = mat(
cos theta , -sin theta;
sin theta , cos theta;
) mat(
A_y; A_z;
)
$
- Transformation for rotation about an arbitrary axis
$
mat(
overline(A)_x ; overline(A)_y; overline(A)_z;
) = mat(
  R_(x x), R_(x y), R_(x z);
  R_(y x), R_(y y), R_(y z);
  R_(z x), R_(z y), R_(z z);
) mat(
A_x; A_y; A_z;
)
$

== 矢量微分 Differential Calculus

=== 导数 Ordinary Derivatives

$
dd(f) = (derivative(f,x)) dd(x)
$

=== Hamilton算符 Hamiltonian
$
nabla = vu(x) partial /(partial x) + vu(y) partial /(partial y) + vu(z) partial /(partial z)
$

=== 梯度 Gradient of scalar function

标量场：$T(x,y,z)$

$
grad T = (partialderivative(T,x)) vu(x) + (partialderivative(T,y)) vu(y) + (partialderivative(T,z)) vu(z) "Hamilton量" 
$
$
dd(T) &= (partialderivative(T,x)) dd(x) + (partialderivative(T,y)) dd(y) + (partialderivative(T,z)) dd(z) = (partialderivative(T,x) vu(x) + partialderivative(T,y) vu(y) + partialderivative(T,z) vu(z)) dot (dd(x) vu(x) + dd(y) vu(y) + dd(z) vu(z))\ 
&= grad T dot dd(vb(l)) = abs(grad T) abs(dd(vb(l))) cos theta
$
- 梯度表示函数$T$的斜率和最大增长方向。
- 函数的极值梯度为零。

=== 散度 Divergence of a vector field

矢量场：$vb(v) = v_x vu(x) + v_y vu(y) + v_z vu(z)$

$
div vb(v) &= (vu(x) partial /(partial x) + vu(y) partial /(partial y) + vu(z) partial /(partial z)) dot (v_x vu(x) + v_y vu(y) + v_z vu(z))\
&= partialderivative(v_x,x) + partialderivative(v_y,y) + partialderivative(v_z,z)
$

散度是衡量矢量从相关点扩散（发散）的程度。

=== 旋度 Curl of a vector field

$
curl vb(v) &= (vu(x) partial /(partial x) + vu(y) partial /(partial y) + vu(z) partial /(partial z)) times (v_x vu(x) + v_y vu(y) + v_z vu(z))\
&= mat(
vu(x), vu(y), vu(z);
(partial)/(partial x), (partial)/(partial y), (partial)/(partial z);
v_x, v_y, v_z;delim: "|"
)\
&= vu(x) ((partial v_z)/(partial y) - (partial v_y)/(partial z)) + vu(y) ((partial v_x)/(partial z) - (partial v_z)/(partial x)) + vu(z) ((partial v_y)/(partial x) - (partial v_x)/(partial y))
$

旋度是矢量场的旋转程度。

=== 乘法公式 Lebniiz's Rule

- 导数的乘法公式
$
dd("")/dd(x) (f g) = f (dd(g)/dd(x)) + g (dd(f)/dd(x))
$

- 梯度的乘法公式

$
grad(f g) &= f grad(g) + g grad(f)\
grad(vb(A) dot vb(B)) &= vb(A) times (curl vb(B)) + vb(B) times (curl vb(A)) + (vb(A) dot grad) vb(B) + (vb(B) dot grad) vb(A)\
$
- 散度的乘法公式
$
div(f vb(A)) &= f (div vb(A)) + vb(A) dot grad(f)\
div(vb(A) times vb(B)) &= vb(B) dot (curl vb(A)) - vb(A) dot (curl vb(B))
$

- 旋度的乘法公式
$
curl(f vb(A)) &= grad(f) times vb(A) + f (curl vb(A))\
curl(vb(A) times vb(B)) &= vb(B) dot (grad) vb(A) - vb(A) dot (grad) vb(B) + vb(A) (div vb(B)) - vb(B) (div vb(A))
$

=== 二阶导数

- Laplacian
$
div(grad T) = nabla dot (grad T) = nabla^2 T = (partial^2 T)/(partial x^2) + (partial^2 T)/(partial y^2) + (partial^2 T)/(partial z^2)\
$
$
laplacian vb(v) = (laplacian v_x) vu(x) + (laplacian v_y) vu(y) + (laplacian v_z) vu(z)
$
- *梯度场的旋度*
$
curl(grad T) = 0
$
- 散度的梯度
$
grad(div vb(v))
$
- *旋度场的散度*
$
div(curl vb(v)) = 0
$
- 旋度场的旋度
$
curl(curl vb(v)) = grad(div vb(v)) - laplacian vb(v)
$
Often used to define the Laplacian of a vector.

== 矢量积分 Integral Calculus

=== 线积分、面积分、体积分 Line, Surface, and Volume Integrals

- Line Integral
$
integral_a^b vb(v) dot vb(l) = integral_a^b v_x dd(x) + v_y dd(y) + v_z dd(z)\
integral.cont vb(v) dot vb(l) (" if" a = b)
$
- Surface Integral
$
integral_S vb(v) dot vu(n) dd(a) = integral_S v_x dd(y) dd(z) + v_y dd(z) dd(x) + v_z dd(x) dd(y)\
integral.cont vb(v) dot vu(n) dd(a) (" if" S "is closed")
$
- Volume Integral
$
integral_V T dd(V) \
 integral_V vb(v) dd(V)
$

=== 微积分基本定理 Fundamental Theorem of Calculus
$
integral_a^b dd(f)/dd(x) dd(x) = f(b) - f(a)\
$

=== 梯度定理 Fundamental Theorem for Gradients

$
integral_a^b (grad T) dot dd(vb(l)) = T(b) - T(a)\
(grad T) dot vb(l) = dd(T)
$

=== 散度定理 Fundamental Theorem for Divergences

$
integral_V (div vb(v)) dd(V) = integral.cont vb(v) dot dd(vb(a))\
$
也称为Gauss’s theorem, Green’s theorem，物理意义是散度是矢量场的源和汇的差。

这给出了一个散度的定义
$
div vb(v) = lim_(V -> 0) (integral.cont_S vb(v) dot dd(vb(a)))/V
$

=== 旋度定理 Fundamental Theorem for Curls

$
integral_S (curl vb(v)) dot dd(vb(a)) = integral.cont vb(v) dot dd(vb(l))\
$
也称为Stokes’s theorem，物理意义是旋度是矢量场的环路积分的源和汇的差。

这给出了一个旋度的定义
$
(curl vb(v)) times vu(n) = lim_(S -> 0) (integral.cont_C vb(v) dot dd(vb(l)))/S
$

=== 微分形式和外微分

关于这部分的详细论述见 @附录A。


=== 分部积分 Integration by Parts

$
integral_a^b f (dd(g)/dd(x)) dd(x) =eval(f g)_a^b - integral_a^b g (dd(f)/dd(x)) dd(x)\
$

将导数从$g$（或$A$）转移到$f$，代价是一个负号和一个边界项。

$
div(f vb(A)) = f (div vb(A)) + vb(A) dot (grad f)\
integral div(f vb(A)) dd(tau) = integral f (div vb(A)) dd(tau) + integral vb(A) dot grad f dd(tau) =  integral.cont f vb(A) dot dd(vb(a))\
integral_V f( div vb(A) )dd(V) = - integral_V vb(A) dot grad f dd(V) + integral.cont_S f vb(A) dot dd(vb(a))
$

== 曲面坐标系 Curvilinear coordinates

=== 球坐标系 Spherical Coordinates

$
vb(r) = v_r vu(r) + v_theta vu(theta) + v_phi vu(phi)\
$
坐标变换
$
mat(x;y;z) = 
mat(
r sin theta cos phi;
r sin theta sin phi;
r cos theta
)

$
- Differential of unit vector:
$
partialderivative(vu(r),theta) = vu(theta), partialderivative(vu(r),phi) = sin theta vu(phi)
$
$
dd(vb(l)) = dd(x) vu(x) + dd(y) vu(y) + dd(z) vu(z) = dd(r) vu(r) + r dd(theta) vu(theta) + r sin theta dd(phi) vu(phi)\
dd(tau) = dd(x) dd(y) dd(z) = r^2 sin theta dd(r) dd(theta) dd(phi)
$
- Vector derivatives
$
grad T = partialderivative(T,r) vu(r) + 1/r partialderivative(T,theta) vu(theta) + 1/(r sin theta) partialderivative(T,phi) vu(phi)\
div vb(v) = 1/r^2 partialderivative(,r)(r^2 v_r) + 1/(r sin theta) partialderivative(,theta)(sin theta v_theta) + 1/(r sin theta) partialderivative(,phi)v_phi\
curl vb(v) = 1/(r sin theta) (partialderivative(,theta)(sin theta v_phi) - partialderivative(v_theta,phi)) vu(r) + 1/r (1/(sin theta) partialderivative(v_r,phi) - partialderivative(,r)(r v_phi)) vu(theta) + 1/r (partialderivative(,r)(r v_theta) - partialderivative(v_r,theta)) vu(phi)\
laplacian T = 1/r^2 partialderivative(,r)(r^2 partialderivative(T,r)) + 1/(r^2 sin theta) partialderivative(,theta)(sin theta partialderivative(T,theta)) + 1/(r^2 sin^2 theta) partialderivative(T,phi,2)

$
=== 柱坐标系 Cylindrical Coordinates

$
vb(r) = v_r vu(r) + v_theta vu(theta) + v_z vu(z)\
$
坐标变换
$
mat(x;y;z) =
mat(
r cos theta;
r sin theta;
z
)
$
- Differential of unit vector:
$
dd(vb(l)) = dd(x) vu(x) + dd(y) vu(y) + dd(z) vu(z) = dd(r) vu(r) + r dd(theta) vu(theta) + dd(z) vu(z)\
dd(tau) = dd(x) dd(y) dd(z) = r dd(r) dd(theta) dd(z)
$
- Vector derivatives
$
grad T = (partialderivative(T,r)) vu(r) + (1/r) (partialderivative(T,theta)) vu(theta) + (partialderivative(T,z)) vu(z)\
div vb(v) = 1/r partialderivative(,r)(r v_r) + r partialderivative(,theta)(v_theta) + partialderivative(v_z,z)\
curl vb(v) = (1/r partialderivative(v_z,theta) - partialderivative(v_theta,z)) vu(r) + (partialderivative(v_r,z) - partialderivative(v_z,r)) vu(theta) + 1/r (partialderivative(,r)(r v_theta) - partialderivative(v_r,theta)) vu(z)\
laplacian T = 1/r partialderivative(,r)(r partialderivative(T,r)) + 1/(r^2) partialderivative(T,theta,2) + partialderivative(T,z,2)
$

== Dirac函数 Dirac Delta Function

#figure(
  image("pic/2024-09-13-16-42-18.png", width: 80%),
  numbering: none,
)

引入Dirac函数的目的是为了描述一个点电荷的电场。

- One-Dimensional Dirac Delta Function
$
delta(x) = cases(
0 & x != 0,
oo & x = 0
)\
integral_(-oo)^oo delta(x) dd(x) = 1
$
一些性质
$
delta(a x) = 1/abs(a) delta(x)\
f(x) delta(x) = f(0) delta(x)\
integral_(-oo)^oo f(x) delta(x - a) dd(x) = f(a)\
$
- Three-Dimensional Delta Function
$
delta^3(vb(r)) = delta(x) delta(y) delta(z)
$
一些性质
$
integral_(-oo)^oo delta^3(vb(r)) dd(V) = 1\
integral_(-oo)^oo f(vb(r)) delta^3(vb(r) - vb(r')) dd(V) = f(vb(r'))
$
一些导数的运算
$
div(vu(r)/r^2) = 4 pi delta^3(vb(r))\
div((vu(r) - vb(r'))/abs(vb(r) - vb(r'))^3) = 4 pi delta^3(vb(r) - vb(r'))\
laplacian(1/abs(vb(r) - vb(r'))) = -4 pi delta^3(vb(r) - vb(r'))
$

== 场的理论 Theory of Vector Fields

一般知道场的散度和旋度，不能唯一地确定场。但是有以下定理：

=== Helmholtz Theorem

如果指定了矢量函数$vb(F)(vb(r))$的散度$D(vb(r))$和旋度$vb(C)(vb(r))$，并且如果它们都以快于$1/r^2$的速度随着$r→∞$变为零，并且如果$vb(F)(vb(r))$随着$r→∞$变为零，那么$vb(F)$由以下公式唯一给出：

$
vb(F) = - div V + curl vb(A)\
V(vb(r)) = 1/(4 pi) integral D(vb(r'))/abs(vb(r) - vb(r')) dd(tau')\
vb(A)(vb(r)) = 1/(4 pi) integral vb(C(vb(r')))/abs(vb(r) - vb(r')) dd(tau')
$
其中
$
D(vb(r)) = div vb(F)(vb(r))\
vb(C)(vb(r)) = curl vb(F)(vb(r))
$

证明：
$
div vb(F) &= - laplacian V + div(curl vb(A)) = - laplacian V\
&= - 1/(4 pi) integral laplacian D(vb(r'))/abs(vb(r) - vb(r')) dd(tau')\
&= - 1/(4 pi) integral - 4 pi D(vb(r')) delta^3(vb(r) - vb(r')) dd(tau') = D(vb(r))
$
$
curl vb(F) &= curl(- grad V + curl vb(A)) =curl(curl vb(A)) = - laplacian vb(A) + grad(div vb(A))\
&= - 1/(4 pi) integral laplacian vb(C(vb(r')))/abs(vb(r) - vb(r')) dd(tau') + 1/(4 pi)grad( integral vb(C(vb(r'))) div 1/abs(vb(r) - vb(r')) dd(tau'))\
&= vb(C)(vb(r)) - 1/(4 pi)grad( integral bold(nabla') dot vb(C(vb(r')))/abs(vb(r) - vb(r')) dd(tau'))\
&= vb(C)(vb(r)) - 1/(4 pi) (integral 1/abs(vb(r) - vb(r')) bold(nabla') dot vb(C(vb(r'))) dd(tau') - integral.cont 1/abs(vb(r) - vb(r')) vb(C(vb(r'))) dot dd(vb(a)'))\
&= vb(C)(vb(r)) + 1/(4 pi) integral.cont 1/abs(vb(r) - vb(r')) vb(C(vb(r'))) dot dd(vb(a)')\
&= vb(C)(vb(r))
$