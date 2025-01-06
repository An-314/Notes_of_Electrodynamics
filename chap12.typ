#import"@preview/physica:0.9.2":*
#import "template.typ": *

= Electrodynamics and Relativity 电动力学与相对论

== The Special Theory of Relativity

三维一般波方程$a$为波速，因惯性系的变换而变化
$
laplacian u - 1/a^2 pdv(u,t,2) = - f(x,y,z,t)
$

#figure(
  image("pic/2025-01-05-03-07-07.png", width: 80%),
  numbering: none,
)
=== Einstein's Postulates 爱因斯坦的假设

1. The principle of relativity 相对性原理

    The laws of physics are the same in all inertial frames of reference. 物理定律在所有惯性系中相同。

2. The universal speed of light 光速不变原理

    The speed of light in vacuum is the same in all inertial frames of reference. 真空中的光速在所有惯性系中相同。

Einstein's velocity addition rule:
$
v_(A C) = (v_(A B) + v_(B C))/(1 + (v_(A B) v_(B C))/c^2)
$
Galielian velocity addition rule:
$
v_(A C) = v_(A B) + v_(B C)
$

=== The Geometry of Relativity 相对论的几何学

==== The relativity of simultaneity 同时性的相对性

在一个惯性系中同时发生的两个事件，在另一个惯性系中一般不会同时发生。

#figure(
  image("pic/2025-01-05-12-12-09.png", width: 50%),
  numbering: none,
)

你所看到的，与你所观察到的并不相同。
- 观察者：在信号到达他的时间内，有意识进行修正的人。
- 观察：观察者在校正后所记录的内容。

#figure(
  image("pic/2025-01-05-12-18-43.png", width: 80%),
  numbering: none,
)

==== Time dilation 时间膨胀

光线照射到车厢地板中央所需的时间。
#figure(
  image("pic/2025-01-05-12-25-05.png", width: 80%),
  numbering: none,
)
车内
$
Delta macron(t) = h/c
$
车外
$
Delta t = sqrt(h^2 + (v Delta t)^2)/c, Delta t = h/c 1/sqrt(1 - v^2/c^2) = Delta macron(t) 1/sqrt(1 - v^2/c^2)
$
两个事件(a) 光线离开灯泡，(b) 光线击中地板中心，之间的时间对于两个观察者来说是不同的。

汽车时钟上记录的时间间隔缩短了系数。

*钟慢*：运动的钟比静止的钟慢
$
gamma = 1/sqrt(1 - v^2/c^2)
$

#figure(
  image("pic/2025-01-05-12-30-14.png", width: 80%),
  numbering: none,
)

#figure(
  image("pic/2025-01-05-12-31-06.png", width: 80%),
  numbering: none,
)

=== Lorentz Contraction 洛伦兹收缩

我们在一节车厢的一端安装了一盏灯，在另一端安装了一面镜子，这样就可以向下和向后发送光信号。信号完成往返需要多长时间？

#figure(
  image("pic/2025-01-05-12-34-37.png", width: 30%),
  numbering: none,
)

车系
$
Delta macron(t) = 2 (Delta macron(x))/c
$
地系
$
Delta t_1 = (Delta x + v Delta t_1)/c, Delta t_2 = (Delta x - v Delta t_2)/c \
=> Delta t = Delta t_1 + Delta t_2 = 2 (Delta x)/c 1/(1 - v^2/c^2) = Delta macron(t) 1/(1 - v^2/c^2)
$
考虑到
$
Delta macron(t) = 1/gamma Delta t
$
就有
$
Delta macron(x) = gamma Delta x
$

移动的时钟运行缓慢，移动的棍子缩短，而系数总是 𝛾。与速度垂直的尺寸不收缩。

=== The Lorentz Transformations 洛伦兹变换

#figure(
  image("pic/2025-01-05-12-43-18.png", width: 80%),
  numbering: none,
)

事件$E$在$S$系中的坐标为$(x,y,z,t)$，在$macron(S)$系中的坐标为$(macron(x),macron(y),macron(z),macron(t))$，则

- Galielian transformations
  $
  d = macron(x)\
  x = d + v t
  $
  $
  macron(x) &= x - v t\
  macron(y) &= y\
  macron(z) &= z\
  macron(t) &= t
  $
- Lorentz transformations
  $
  d = 1/gamma macron(x)\
  macron(x) = gamma (x - v t)
  $
  $
  macron(x) &= gamma (x - v t)\
  macron(y) &= y\
  macron(z) &= z\
  macron(t) &= gamma (t - v/c^2 x)
  $

#figure(
  image("pic/2025-01-05-12-56-46.png", width: 80%),
  numbering: none,
)

=== The Structure of Spacetime 时空的结构

Four-vectors
$
mat(x^0; x^1; x^2; x^3) = mat(c t; x; y; z)
$
定义
$
beta = v/c, gamma = 1/sqrt(1 - beta^2)
$
则Lorentz transformations可以写成
$
mat(macron(x)^0; macron(x)^1; macron(x)^2; macron(x)^3) = mat(gamma, - gamma beta, 0, 0; - gamma beta, gamma, 0, 0; 0, 0, 1, 0; 0, 0, 0, 1) mat(x^0; x^1; x^2; x^3)
$
即
$
macron(x)^mu = Lambda^mu_nu x^nu
$

Four-dimensional scalar product
$
a_mu b^mu = a_0 b^0 + a_1 b^1 + a_2 b^2 + a_3 b^3 = - a^0 b^0 + a^1 b^1 + a^2 b^2 + a^3 b^3 = a^mu b_mu
$

==== Contravariant and Covariant 逆变和协变

逆变
$
a^mu = mat(a^0; a^1; a^2; a^3)
$
协变
$
a_mu = mat(a_0, a_1, a_2, a_3) = mat(-a^0, a^1, a^2, a^3)
$
- 提高或降低时间变量需要一个负号（$a_0=-a^0$）；
- 提高或降低空间变量不会有任何变化（$a_1=a^1；a_2=a^2；a_3=a^3$）

1. 线性相关与线性无关

    有$m$个矢量$x_i$，如果存在一组不全为零的数$a_i$使得$a_i x_i=0$，则称这些矢量线性相关；否则称线性无关。

2. $n$维仿射空间

    有$n$个线性无关的矢量$x_i$，并且任意$n+1$个矢量都是线性相关的，则称这些矢量张成一个$n$维仿射空间。

3. 坐标基矢

    $N$维仿射空间中的$n$个线性无关向量为$vb(e)_i$有
    $
    a vb(x) + a_1 vb(e)_1 + a_2 vb(e)_2 + ... + a_n vb(e)_n = 0, a!=0
    $
    $
    vb(x) = - a_1/a vb(e)_1 - a_2/a vb(e)_2 - ... - a_n/a vb(e)_n
    $
    则称$vb(e)_i$为坐标基矢。定义$x^i$
    $
    x^i = - a_i/a\
    vb(x) = x^i vb(e)_i
    $
    $x^i$就是$x$在仿射坐标系$vb(e)_i$中的*逆变分量*

4. 变换矩阵

    一组新的坐标基矢$vb(e)_i'$可以表示为旧的坐标基矢$vb(e)_i$的线性组合
    $
    vb(e)_i' = A^i_i' vb(e)_i
    $
    基矢$vb(e)_i$和$vb(e)_i'$都不存在“正交”或者“单位矢量”的说法，只有线性无关的概念。即
    $
    det(A^i_i') = det mat(A^1_1', A^2_1', ..., A^n_1'; A^1_2', A^2_2', ..., A^n_2'; dots.v,dots.v,dots.down,dots.v; A^1_n', A^2_n', ..., A^n_n') != 0
    $
    从而
    $
    vb(e)_i = (vb(A)^(-1))_i^i' vb(e)_i'
    $

5. 逆变张量与协变张量

    任意矢量$vb(x)$可以由基矢$vb(e)_i$展开
    $
    vb(x) = x^i vb(e)_i
    $
    也可以由基矢$vb(e)_i'$展开
    $
    vb(x) = x^i' vb(e)_i'
    $
    有
    $
    vb(x) = x^i (vb(A)^(-1))_i^i' vb(e)_i'\
    x^(i') = (vb(A)^(-1))_i^i' x^i\
    vb(e)_(i') = A_i^i' vb(e)_i
    $

6. ⼀阶逆变张量

    在$n$维仿射空间的任⼀坐标系中给出⼀组数$x^i$，如果坐标基矢由矩阵$A_i^i'$变换时，这⼀组数由转置逆矩阵$(A^(-1))_i^i'$变换，则称$x^i$为⼀阶逆变张量。

7. ⼀阶协变张量

    在$n$维仿射空间的任⼀坐标系中给出⼀组数$a_i$，如果在坐标变换时，这⼀组数由矩阵$A_i^i'$变换，则称$a_i$为⼀阶协变张量。

    举例：设$x^i$为仿射空间$vb(e)_i$为基矢的点的坐标，则
    $
    sum_(i=1)^n a_i x^i = 1
    $
    表示仿射空间内的一个平面。

    以$vb(e)_i'$为基矢，该方程为
    $
    sum_(i'=1)^n a_i' x^(i') = 1
    $
    其中
    $
    x^i = A_i'^i x^(i'), a_i'=A_i'^i a_i
    $

8. $nu$阶协变，$mu$阶逆变张量

    在仿射空间给出一组数$a^(j_1 j_2 ... j_mu)_(i_1 i_2 ... i_nu)$有$nu$个下标和$mu$个上标，每个下表独立地按照坐标基矢的变换规律变换，每个上标独立地按照逆变基矢的变换规律变换，则称$a^(j_1 j_2 ... j_mu)_(i_1 i_2 ... i_nu)$为$nu$阶协变，$mu$阶逆变张量。
    $
    a^(j'_1 j'_2 ... j'_mu)_(i'_1 i'_2 ... i'_nu) = sum_(i_1, i_2, ..., i_nu, j_1, j_2, ..., j_mu) A_(i'_1)^i_1 A_(i'_2)^i_2 ... A_(i'_nu)^i_nu (A^(-1))_(j_1)^(j'_1) (A^(-1))_(j_2)^(j'_2) ... (A^(-1))_(j_mu)^(j'_mu) a^(j_1 j_2 ... j_mu)_(i_1 i_2 ... i_nu)
    $

9. 张量运算

    1. 加法：两个张量的协变指标数与逆变指标数必须分别相等
        $
        c^(j_1 j_2 ... j_mu)_(i_1 i_2 ... i_nu) = a^(j_1 j_2 ... j_mu)_(i_1 i_2 ... i_nu) + b^(j_1 j_2 ... j_mu)_(i_1 i_2 ... i_nu)
        $
    2. 乘法
        $
        c^(j_1 j_2 ... j_(m+l))_(i_1 i_2 ... i_(nu+mu)) = a^(j_1 j_2 ... m)_(i_1 i_2 ... i_nu) b^(j_(m+1) j_(m+2) ... j_(m+l))_(i_(nu+1) i_(nu+2) ... i_(nu+mu))
        $
    3. 指标缩并：只能将⼀个上指标和⼀个下指标缩并
        $
        c^(j_1 j_2 ... j_(mu-1))_(i_1 i_3 ... i_nu) = a^(j_1 j_2 ... j_(mu-1) l)_(i_1 l i_3 ... i_nu)
        $
    4. 指标置换：只有同类型的指标可以置换。

10. 度规张量 （metric tensor）

    1. 在仿射空间中没有定义矢量的点积，也就没有长度和角度。仿射空间是没有度量的空间。
    2. 在仿射空间的基础上，加进矢量点积的定义，就得到一个有度量的空间。不同的点积的定义，可以得到本质不同的空间。
    3. 从仿射空间到真欧式空间，定义点积
        $
        vb(x) dot vb(y) = g_(i j) x^i y^j\
        g_(i j) = delta_(i j)
        $
    4. 欧⽒空间要求坐标变换保持⽮量点积不变，即
        $
        (vb(A^(-1)))_i^i' = A_i'^i
        $
    5. $g_(i j)$是二阶协变张量，是欧氏空间的度规张量。
  
11. 指标升降
    $
    x_i = g_(i j) x^j\
    $
    在欧式空间中$x_i=x^i$。欧式空间中，每个逆变张量都对应⼀个协变张量，并且各对应分量相等。因此在欧式空间中没有必要区分逆变和协变，上标和下标。

12. 三维真欧式空间

    矢量点积
    $
    vb(a) dot vb(b) = a_i b_j delta_(i j)
    $
    形式的空间

13. 四维伪欧式空间

    定义矢量点积
    $
    vb(x) dot vb(y) = g_(alpha beta) x^alpha y^beta\
    g_(alpha beta) = mat(1, 0, 0, 0; 0, -1, 0, 0; 0, 0, -1, 0; 0, 0, 0, -1)
    $
    的仿射空间为四维伪欧式空间。其中$g_(alpha beta)$为协变度规张量。

    逆变度规张量
    $
    g^(alpha beta) = mat(1, 0, 0, 0; 0, -1, 0, 0; 0, 0, -1, 0; 0, 0, 0, -1) = g_(alpha beta)
    $
    有
    $
    g_(alpha gamma) g^(beta gamma) = delta_alpha^beta
    $

14. 闵可夫斯基空间

  度规张量四个对⻆元素中，三个相同符号⼀个不同符号的四维伪欧⽒空间。

=== The invariant interval 不变间隔

事件$A:mat(x^0_A; x^1_A; x^2_A; x^3_A)$和事件$B:mat(x^0_B; x^1_B; x^2_B; x^3_B)$之间的不变间隔
$
I = (Delta x)_mu (Delta x)^mu = - (Delta x^0)^2 + (Delta x^1)^2 + (Delta x^2)^2 + (Delta x^3)^2 = - c^2 t^2 + d^2
$
其中，$t$是两个事件之间的时间间隔，$d$是它们之间的空间距离。

- 如果 $I < 0$，我们称之为timelike，因为当两者出现在同一地点（$d = 0$），只是时间上分开时，我们得到的就是这个符号。
- 如果 $I > 0$，我们称其为spacelike，因为这是当两者在同一时间（$l = 0$）发生，并且仅在空间上分离时得到的符号。
- 如果 $I = 0$，我们称之为lightlike，因为这是两个事件通过以光速传播的信号连接时的关系。

#figure(
  image("pic/2025-01-05-14-05-19.png", width: 40%),
  numbering: none,
)

这个间隔是不随惯性系的变换而变化的，因此是一个不变量。

=== Space-time diagrams 时空图

对所有惯性观测者而言，因果相关事件之间的不变间隔总是时间性的，它们的时间排序也是相同的。

#figure(
  image("pic/2025-01-05-14-06-55.png", width: 80%),
  numbering: none,
)

== Relativistic Mechanics 相对论力学

=== Proper Time and Proper Velocity 固有时间和固有速度

当你沿着世界线前进时，你的手表走得很慢；当墙上的时钟以 dt 为间隔滴答作响时，你的手表只前进了 $dd(𝜏)$：
$
dd(τ) = sqrt(1- u^2/c^2) dd(t)
$
其中$u$是你（一个特殊物体）的速度。你的手表记录的时间，或与运动物体相关的时间 $𝜏$ 称为固有时间。

速度
$
vb(u) = dv(vb(l),t)
$
固有速度
$
vb(eta) = dv(vb(l),tau) = vb(u)/sqrt(1 - (u^2/c^2))
$

==== Proper velocity 4-vector, or 4-velocity 固有速度四矢

$
eta^mu = dv(x^mu,tau)
$
由于$dd(tau)$是不变量，对于相对速度沿$x$轴的$S$系和$S'$系，有
$
mat(macron(eta)^0; macron(eta)^1; macron(eta)^2; macron(eta)^3) = mat(gamma (eta^0 - beta eta^1); gamma (eta^1 - beta eta^0); eta^2; eta^3)
$

普通的速度变化
$
macron(u)_x = dv(macron(x),macron(t)) = (u_x - v)/(1 - (u_x v)/c^2)\
macron(u)_y = u_y/gamma(1 - (u_x v)/c^2)\
macron(u)_z = u_z/gamma(1 - (u_x v)/c^2)
$
而固有速度满足Lorentz transformations
$
macron(eta)^mu = Lambda^mu_nu eta^nu
$

=== Relativistic Energy and Momentum 相对论能量和动量

- 相对论动量
$
vb(p) = m vb(eta) = (m vb(u))/sqrt(1 - (u^2/c^2))\
p^0 = (m c)/sqrt(1 - (u^2/c^2))\
vb(p) = mat(p^0; p^1; p^2; p^3)= mat((m c)/sqrt(1 - (u^2/c^2)); (m u_x)/sqrt(1 - (u^2/c^2));( m u_y)/sqrt(1 - (u^2/c^2)); (m u_z)/sqrt(1 - (u^2/c^2)))
$
- 相对论质量
$
m_"rel" = m/sqrt(1 - (u^2/c^2))\
vb(p) = m_"rel" vb(u) = m vb(eta)\
p^0 = m_"rel" c\
$
其中$m$是静质量，$m_"rel"$是相对质量。
- 相对论能量
$
E = (m c^2)/sqrt(1 - (u^2/c^2)) = m_"rel" c^2\
$
静能量
$
E_"rest" = m c^2\
$
动能
$
E_"kin" = E - m c^2 = m c^2 (1/sqrt(1 - (u^2/c^2)) - 1)\
$
有一个恒等式
$
p^mu p_mu = - (p^0)^2 + (vb(p) dot vb(p)) = - m^2 c^2 => E^2 - p^2 c^2 = m^2 c^4
$

==== Invariant and Conserved Quantities 不变量和守恒量

- 不变量——在所有惯性系中的值相同。
- 守恒量——在某个过程前后的值相同。

质量不变，但不守恒；
能量是守恒的，但不是不变的；
电荷既守恒又不变；
速度既不守恒也不不变。

在每个封闭系统中，总的相对论能量和动量都是守恒的。

=== Relativistic Kinematics 相对论运动学

==== Compton Scattering 康普顿散射


#figure(
  image("pic/2025-01-05-15-41-51.png", width: 80%),
  numbering: none,
)
$
E = h nu = (h c)/lambda = p c\
$
就有
$
lambda = lambda_0 + h/(m c)(1 - cos theta)
$

=== Relativistic Dynamics 相对论动力学

Newton’s second law
$
vb(F) = dv(vb(p),t)
$
Work-Energy Theorem：粒子所做的净功等于其动能的增加量
$
W &= integral vb(F) dot dd(vb(l)) = integral dv(vb(p),t) dot dd(vb(l))\
&= integral dv(vb(p),t) dot dv(vb(l),t) dd(t) = integral dv(vb(p),t) dot vb(u) dd(t) = integral dv(,t)((m c^2)/sqrt(1 - (u^2/c^2)) )dd(t)\
&= integral dv(E,t) dd(t) = E_"final" - E_"initial"
$
Forces of relativity
$
macron(F)_x = (F_x - beta/c dv(E,t))/(1- beta u_x/c)\
macron(F)_y = F_y/gamma(1 - beta u_x/c)\
macron(F)_z = F_z/gamma(1 - beta u_x/c)
$

== Relativistic Electrodynamics 相对论电动力学

相对论电动力学的完整和一致的表述；对电动力学结构的深入理解：定律的一致性和必然性

=== Magnetism as a Relativistic Phenomenon 磁性作为相对论现象

Laboratory Frame
#figure(
  image("pic/2025-01-05-16-01-27.png", width: 40%),
  numbering: none,
)
$I = 2 lambda v$

导线中没有净电荷，因此系统$S$中的电荷$q$不受力。

Moving particle frame，以速度$u$相对于导线运动，即粒子静止的参考系

$
v_(plus.minus) = (v minus.plus u)/(1 minus.plus (u v)/c^2)\
lambda_(plus.minus) = plus.minus (gamma_(plus.minus)) lambda_0\
gamma_(plus.minus) = 1/sqrt(1 - v_(plus.minus)^2/c^2)
$

#figure(
  image("pic/2025-01-05-16-19-05.png", width: 80%),
  numbering: none,
)

$
lambda_"tot" = lambda_+ - lambda_- = lambda_0 (gamma_+ - gamma_-) = (-2 lambda u v)/(c^2 sqrt(1 - u^2/c^2))\
$
在 $q$ 的参考系中中，电线带有净负电荷。而正电荷 $q$ 正承受着来自导线的电场力。

The electric force in system
$
macron(F) = q E = - (lambda v)/(pi epsilon_0 c^2 s) (q u)/(sqrt(1 - u^2/c^2))
$
The force in system S: laboratory frame
$
F = sqrt(1 - u^2/c^2) macron(F) = - (lambda v)/(pi epsilon_0 c^2) (q u)/(s) = - q u ((mu_0 I)/(2 pi s))
$
在实验室系中，导线带有净电流$I$，而粒子受到来自导线的磁场力；在粒子系中，导线带有净电荷，而粒子受到来自导线的电场力。

=== How the Fields Transform 磁场如何变换

两个假设：
1. 电荷不变
2. 无论场是如何生成的，转换规则都是一样的

#figure(
  image("pic/2025-01-05-16-34-01.png", width: 100%),
  numbering: none,
)
$
vb(E)_0 = sigma_0/epsilon_0 vu(y), vb(E) = sigma/epsilon_0 vu(y)\
$
每块板上的总电荷量不变，宽度（$w$）不变，但长度（$l$）被洛伦兹收缩了一个因子：
$
1/gamma_0 = sqrt(1 - v_0^2/c^2)
$
表面电荷密度
$
sigma = gamma_0 sigma_0
$
横向电场
$
vb(E)^perp = gamma_0 vb(E)_0^perp
$
纵向电场
$
vb(E)^parallel = vb(E)_0^parallel
$
#figure(
  image("pic/2025-01-05-16-38-09.png", width: 100%),
  numbering: none,
)

*一般情况*：对于既有电场又有磁场的系统，在参考系$S$下

除了有电场
$
E_y = sigma/epsilon_0
$
还有因表面电流引起的磁场
$
vb(K)_(plus.minus) = minus.plus sigma v_0 vu(x)\
B_z = - mu_0 sigma v_0
$
#figure(
  image("pic/2025-01-05-16-44-59.png", width: 100%),
  numbering: none,
)
#figure(
  image("pic/2025-01-05-16-47-30.png", width: 100%),
  numbering: none,
)
The complete set of transformation rules
$
macron(E)_x = E_x\
macron(E)_y = gamma (E_y - v B_z)\
macron(E)_z = gamma (E_z + v B_y)\
macron(B)_x = B_x\
macron(B)_y = gamma (B_y + v/c^2 E_z)\
macron(B)_z = gamma (B_z - v/c^2 E_y)
$
如果在$S$系中$vb(B)=0$
$
macron(B) = - 1/c^2 (vb(v) times vb(E))
$
如果在$S$系中$vb(E)=0$
$
macron(E) = vb(v) times vb(B)
$

#figure(
  image("pic/2025-01-05-16-58-35.png", width: 100%),
  numbering: none,
)
#figure(
  image("pic/2025-01-05-17-00-47.png", width: 100%),
  numbering: none,
)

=== The Field Tensor 场张量

Lorentz Transformations
$
macron(a)^mu = Lambda^mu_nu a^nu\
Lambda = mat(gamma, - gamma beta, 0, 0; - gamma beta, gamma, 0, 0; 0, 0, 1, 0; 0, 0, 0, 1)
$
电磁场的变换由一个反对称的二阶张量连接
$
t^(mu nu) = - t^(nu mu)
$
称为场张量
$
macron(t)^(mu nu) = Lambda^mu_alpha Lambda^nu_beta t^(alpha beta)
$
根据场的变换规则，我们可以得到，场张量
$
F = mat(0, E_x/c, E_y/c, E_z/c; - E_x/c, 0, B_z, - B_y; - E_y/c, - B_z, 0, B_x; - E_z/c, B_y, - B_x, 0)
$
有
$
macron(F)^(mu nu) = Lambda^mu_lambda Lambda^nu_sigma F^(lambda sigma)
$
还有一个与之对偶的张量
$
G = mat(0,B_x, B_y, B_z; - B_x, 0, - E_z/c, E_y; - B_y, E_z/c, 0, - E_x; - B_z, - E_y, E_x, 0)
$
称为对偶场张量
$
macron(G)^(mu nu) = Lambda^mu_lambda Lambda^nu_sigma G^(lambda sigma)
$

=== Electrodynamics in Tensor Notation 张量记法下的电动力学

用张量语言重新表述电动力学定律（麦克斯韦方程组和洛伦兹力定律）。

- 源与场的变换
  $
  rho = Q/V \
  vb(J) = rho vb(u)
  $
  固有电荷密度：电荷在静止系中的密度
  $
  rho_0 = Q/V_0\
  $
  只有一个维度的体积是经过洛伦兹收缩的
  $
  V = sqrt(1 - u^2/c^2) V_0\
  $
  $
  rho = rho_0 1/sqrt(1 - u^2/c^2)\
  vb(J) = rho vb(u)
  $
  可以定义四维电流
  $
  vb(J)^mu = rho_0 vb(eta)^mu = mat(rho c; J_x; J_y; J_z)
  $
- 连续性方程
  $
  div vb(J) + pdv(rho,t) = 0\
  pdv(J^mu,x^mu) = 0
  $
- Maxwell’s Equations
  $
  pdv(F^(mu nu),x^nu) = mu_0 J^mu\
  pdv(G^(mu nu),x^nu) = 0
  $
  #figure(
    image("pic/2025-01-05-17-39-25.png", width: 100%),
    numbering: none,
  )
- Lorentz Force Law
  
  Minkowski Force
  $
  vb(K) = dv(t,tau) dv(vb(p),t) = 1/sqrt(1 - u^2/c^2) vb(F)\
  K^0 = dv(p^0,tau) = 1/c dv(E,tau)
  $
  The Minkowski Force on a charge $q$
  $
  K^mu = q eta_nu F^(mu nu)
  $
  即
  $
  vb(K) = q/sqrt(1 - u^2/c^2) (vb(E) + vb(u) times vb(B))
  $
  $
  vb(F) = q(vb(E) + vb(u) times vb(B))
  $

=== Relativistic Potentials 相对论势

$
vb(E) = - grad Phi - pdv(vb(A),t)\
vb(B) = curl vb(A)
$
四矢量
$
A^mu = mat(Phi/c; A_x; A_y; A_z)
$
有场张量
$
F^(mu nu) = pdv(A^nu,x^mu) - pdv(A^mu,x^nu)
$
规范变换不变性
$
A^mu -> A^mu + pdv(lambda,x^mu)
$
Lorentz gauge
$
div vb(A) + 1/c pdv(Phi,t) = 0\
pdv(A^mu,x^mu)= 0
$
Maxwell方程进一步可以写成
$
square^2 A^mu = mu_0 J^mu
$
其中
$
square^2 = laplacian - 1/c^2 pdv(,t,2) = pdv(,x_mu) pdv(,x^mu)
$

== Motion in a Uniform, Static Magnetic Field 匀静磁场中的运动

=== Equations of motion

$
dv(vb(p),t) = e(vb(E) + vb(u) times vb(B))\
dv(E,t) = e vb(u) dot vb(E)\
$
其中$vb(u)$是粒子的速度，$vb(p)$是粒子的相对论动量，$E$是粒子的相对论总能量。

=== Equations of motion in a uniform, static magnetic field 匀静磁场中的运动方程

$
dv(vb(p),t) = e vb(u) times vb(B)\
dv(E,t) = 0
$
该方程的解
$
vb(omega)_B = (e vb(B))/(m gamma)\
dv(vb(v),t) = vb(v) times vb(omega)_B
$
其中$vb(omega)_B$是回转频率。
$
vb(v)(t) = vb(v)_parallel vu(epsilon)_3 + omega_B a (vu(epsilon)_1 - i vu(epsilon)_2)e^(-i omega_B t)
$
其中$a$是回转半径
$
a = (gamma m v_perp)/(e B) , p_perp = e B a
$
则有
$
vb(x) = vb(x)_0 + vb(v)_parallel t vu(epsilon)_3 + i a (vu(epsilon)_1 - i vu(epsilon)_2)e^(-i omega_B t)
$

#figure(
  image("pic/2025-01-05-18-25-30.png", width: 100%),
  numbering: none,
)

=== Motion in Combined, Uniform, Static Electric and Magnetic Fields 组合均匀静电场和磁场中的运动

垂直场——电场和磁场 E 和 B 是均匀、静态和正交的

用合适的Lorentz变换，变到只有磁场的参考系中，有

#figure(
  image("pic/2025-01-05-18-29-26.png", width: 100%),
  numbering: none,
)

#figure(
  image("pic/2025-01-05-18-33-10.png", width: 100%),
  numbering: none,
)

#figure(
  image("pic/2025-01-05-18-37-14.png", width: 100%),
  numbering: none,
)

#figure(
  image("pic/2025-01-05-18-43-24.png", width: 100%),
  numbering: none,
)

=== Lagrangian and Hamiltonian for a Relativistic Charged Particle in External Electromagnetic Fields 相对论带电粒子在外部电磁场中的拉格朗日量和哈密顿量

Equations of motion—covariant form 协变形式的运动方程
$
dv(U^alpha,tau) = e/m F^(alpha beta) U_beta
$
其中
$
U^alpha = mat(gamma; gamma vb(u)) = p^alpha/m
$
$tau$是固有时间，$U^alpha$是四速度，$p^alpha$是四动量，$m$是质量，$e$是电荷，$F^(alpha beta)$是场张量。

#figure(
  image("pic/2025-01-06-18-52-57.png", width: 80%),
  numbering: none,
)

==== Dynamics formulation with Lagrangian & Hamiltonian 动力学的拉格朗日和哈密顿形式

Euler-Lagrange 运动方程——非相对论力学

Principle of least action：机械系统的运动是这样的：从时间 $t_1$ 时的构型 $a$ 到时间 $t_2$ 时的构型 $b$，$A = integral_(t_1)^(t_2) L[q_i (t), dot(q)_i (t), t] dd(t)$ 取极值。

其中$q_i (t)$是广义坐标，$dot(q)_i (t)$是广义速度，$L$是拉格朗日量。

对$A$求变分

$
delta A = 0
$
有
$
dv(,t) (dv(L,dot(q)_i)) - dv(L,q_i) = 0
$

Lagrangian

如果势能 $V$ 不依赖广义速度
$
L = T - V
$
其中 $T$ 是系统的动能，$V$ 是势能，力可以写成
$
vb(F)_i = - nabla_i V
$
在非相对论系统中
$
T = 1/2 sum_i m_i v_i^2
$

#figure(
  image("pic/2025-01-06-19-34-52.png", width: 80%),
  numbering: none,
)

=== Elementary approach to a relativistic Lagrangian 相对论拉格朗日量的基本方法

#figure(
  image("pic/2025-01-06-19-40-53.png", width: 100%),
  numbering: none,
)

自由粒子
$
L_"free" = - m c^2 sqrt(1 - (u^2/c^2))\
dv(,t)(gamma m vb(u)) = 0\
$
相互作用项
$
L_"int" = - e Phi + e vb(u) dot vb(A)\
$

#figure(
  image("pic/2025-01-06-19-44-29.png", width: 100%),
  numbering: none,
)

$
L = L_"free" + L_"int" = - m c^2 sqrt(1 - (u^2/c^2)) - e Phi + e vb(u) dot vb(A)\
P_i = pdv(L,u_i) = gamma m u_i + e A_i => vb(P) = gamma m vb(u) + e vb(A) = vb(p) + e vb(A)
$

=== Hamiltonian Formulation 哈密顿形式

$
H = vb(P) dot vb(u) - L\
$
其中
$
vb(u) = ((vb(P) - e vb(A))c)/sqrt((vb(P) - e vb(A))^2 + m^2 c^2)\
H = sqrt((vb(P) - e vb(A))^2 c^2 + m^2 c^4) + e Phi
$

#figure(
  image("pic/2025-01-06-19-50-16.png", width: 80%),
  numbering: none,
)

=== Discussions on the Hamiltonian and Lagrangian

- Hamiltonian is the total energy W of the particle

#figure(
  image("pic/2025-01-06-19-54-36.png", width: 80%),
  numbering: none,
)

- The energy-momentum 4-vector can be written as
$
p^alpha = mat(E/c; vb(p)) = mat((W - e Phi)/c; vb(P) - e vb(A))
$

- Gauge invariance (under a gauge transformation of the potentials)

$
L_"int" = e/gamma U_alpha A^alpha
$

=== Manifestly covariant(显式协变) treatment of the relativistic Lagrangian 相对论拉格朗日量的显式协变处理

- free particles
$
m dv(x^alpha,tau,2) = 0
$

#figure(
  image("pic/2025-01-06-20-09-26.png", width: 80%),
  numbering: none,
)

- Relativistic charged particle in external electromagnetic fields

$
m dv(x^alpha,tau,2) = e (partial^alpha A^beta - partial^beta A^alpha) dv(x^beta,tau) <=> dv(U^alpha,tau) = e F^(alpha beta) U_beta
$

#figure(
  image("pic/2025-01-06-20-11-45.png", width: 80%),
  numbering: none,
)

#figure(
  image("pic/2025-01-06-20-12-04.png", width: 80%),
  numbering: none,
)

Hamilton’s equations
$
dv(x^alpha,tau) = pdv(tilde(H),P_alpha) = 1/m (P_alpha - e A_alpha) = U^alpha\
dv(P_alpha,tau) = - pdv(tilde(H),x^alpha) = e/m (P_beta - e A_beta) partial^alpha A^beta
$

#figure(
  image("pic/2025-01-06-20-21-07.png", width: 100%),
  numbering: none,
)

== Solution of the Wave Equation in Covariant Form; Invariant Green Functions 协变形式的波动方程解；不变格林函数

=== Four-dimensional wave equation 四维波动方程

非均质Maxwell方程
$
partial_nu F^(mu nu) = mu_0 J^mu\
square^2 A^mu = - mu_0 J^mu
$

#figure(
  image("pic/2025-01-06-20-25-33.png", width: 90%),
  numbering: none,
)

=== Green function

#figure(
  image("pic/2025-01-06-20-29-34.png", width: 100%),
  numbering: none,
)

#figure(
  image("pic/2025-01-06-20-31-55.png", width: 100%),
  numbering: none,
)

#figure(
  image("pic/2025-01-06-20-32-12.png", width: 100%),
  numbering: none,
)

#figure(
  image("pic/2025-01-06-20-33-53.png", width: 100%),
  numbering: none,
)

#figure(
  image("pic/2025-01-06-20-37-35.png", width: 100%),
  numbering: none,
)