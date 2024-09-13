#import"@preview/physica:0.9.2":*
#import "@preview/mitex:0.2.4":*
#import "template.typ": *


= 附录

== 外微分与张量代数

<附录A>

以下内容由GPT-o1生成：
#mitext(
`
\subsubsection{引言}

微分形式是微分几何和拓扑中的核心工具，提供了在任意维度空间中处理积分和微分运算的统一框架。传统的向量分析中的梯度、散度和旋度可以通过微分形式重新表述。这种表述不仅深化了对这些算子的理解，而且方便了在高维空间中的推广。

\subsubsection{向量场与微分形式的对应}

在三维欧几里得空间中，向量场和微分形式之间存在以下对应关系：

- \textbf{标量函数 \( f \)}：对应 \textbf{0-形式}。
- \textbf{向量场 \( \vec{F} = P\vec{i} + Q\vec{j} + R\vec{k} \)}：对应 \textbf{1-形式} \( \omega = Pdx + Qdy + Rdz \)。
- \textbf{面密度}：对应 \textbf{2-形式} \( \alpha = U\, dy \wedge dz + V\, dz \wedge dx + W\, dx \wedge dy \)。
- \textbf{体积形式}：对应 \textbf{3-形式} \( \beta = T\, dx \wedge dy \wedge dz \)。

\subsubsection{外微分算子}

外微分 \( \mathrm{d} \) 是作用于微分形式的基本算子，具有以下性质：

- \textbf{线性性}：
  \[
  d(a\omega + b\eta) = a\,d\omega + b\,d\eta
  \]
- \textbf{Leibniz 法则}：
  \[
  d(\omega \wedge \eta) = d\omega \wedge \eta + (-1)^k \omega \wedge d\eta
  \]
  其中 \( \omega \) 是 \( k \)-形式。
- \textbf{幂零性}：
  \[
  d^2 = 0
  \]

\subsubsection{Hodge 对偶算子 \( * \)}

Hodge 对偶算子 \( * \) 将一个 \( k \)-形式映射为一个 \( (n - k) \)-形式（\( n \) 为空间维数）。在三维空间中：

- \textbf{1-形式与 2-形式}：互为 Hodge 对偶。
- \textbf{0-形式与 3-形式}：互为 Hodge 对偶。

\subsubsection{梯度与微分形式}

- \textbf{标量函数 \( f \)}：
  - 对应 \textbf{0-形式}。
- \textbf{梯度运算}：
  - 对 \( f \) 取外微分 \( df \)，得到对应的 \textbf{1-形式}：
    \[
    df = \frac{\partial f}{\partial x}\,dx + \frac{\partial f}{\partial y}\,dy + \frac{\partial f}{\partial z}\,dz
    \]
- \textbf{对应的向量场}：
  - 梯度向量场 \( \nabla f \) 与 \( df \) 有一一对应关系。


\subsubsection{散度与微分形式}

- \textbf{向量场对应的 1-形式}：
  \[
  \omega = P\,dx + Q\,dy + R\,dz
  \]
- \textbf{步骤}：
  \begin{enumerate}
    \item \textbf{应用 Hodge 对偶}：
      \[
      *\omega = P\,(*dx) + Q\,(*dy) + R\,(*dz)
      \]
      得到一个 \textbf{2-形式}。
    \item \textbf{对 \( *\omega \) 取外微分}：
      \[
      d(*\omega)
      \]
      得到一个 \textbf{3-形式}。
    \item \textbf{再次应用 Hodge 对偶}：
      \[
      *d(*\omega)
      \]
      得到一个 \textbf{0-形式}（标量）。
  \end{enumerate}
- \textbf{结果}：
  \[
  *d(*\omega) = \frac{\partial P}{\partial x} + \frac{\partial Q}{\partial y} + \frac{\partial R}{\partial z} = \operatorname{div} \vec{F}
  \]
- \textbf{总结}：\textbf{散度运算}对应于对 1-形式应用组合算子 \( *d* \)。


\subsubsection{旋度与微分形式}

- \textbf{向量场对应的 1-形式}：
  \[
  \omega = P\,dx + Q\,dy + R\,dz
  \]
- \textbf{步骤}：
  \begin{enumerate}
    \item \textbf{对 \( \omega \) 取外微分}：
      \begin{align*}
      d\omega &= \left( \frac{\partial Q}{\partial x} - \frac{\partial P}{\partial y} \right) dx \wedge dy \\
      &\quad + \left( \frac{\partial R}{\partial y} - \frac{\partial Q}{\partial z} \right) dy \wedge dz \\
      &\quad + \left( \frac{\partial P}{\partial z} - \frac{\partial R}{\partial x} \right) dz \wedge dx
      \end{align*}
      得到一个 \textbf{2-形式}。
    \item \textbf{应用 Hodge 对偶}：
      \[
      *d\omega = \left( \frac{\partial R}{\partial y} - \frac{\partial Q}{\partial z} \right) dx + \left( \frac{\partial P}{\partial z} - \frac{\partial R}{\partial x} \right) dy + \left( \frac{\partial Q}{\partial x} - \frac{\partial P}{\partial y} \right) dz
      \]
      得到一个 \textbf{1-形式}。
  \end{enumerate}
- \textbf{对应的向量场}：
  \[
  \operatorname{curl} \vec{F} = \left( \frac{\partial R}{\partial y} - \frac{\partial Q}{\partial z} \right) \vec{i} + \left( \frac{\partial P}{\partial z} - \frac{\partial R}{\partial x} \right) \vec{j} + \left( \frac{\partial Q}{\partial x} - \frac{\partial P}{\partial y} \right) \vec{k}
  \]
- \textbf{总结}：\textbf{旋度运算}对应于对 1-形式取外微分并应用 Hodge 对偶，即：
    \[
    \operatorname{curl} \vec{F} = (*d\omega)^\sharp
    \]
    其中 \( \sharp \) 表示将 1-形式转换为向量场。

\subsubsection{总结}

- \textbf{梯度}：
  - 对标量函数（0-形式）取外微分 \( df \)，对应梯度向量场 \( \nabla f \)。
- \textbf{散度}：
  - 对 1-形式应用组合算子 \( *d* \)，得到散度 \( \operatorname{div} \vec{F} \)。
- \textbf{旋度}：
  - 对 1-形式取外微分 \( d\omega \) 并应用 Hodge 对偶 \( * \)，得到旋度 \( \operatorname{curl} \vec{F} \)。
- \textbf{统一框架}：
  - 微分形式和外微分提供了统一的数学框架，方便在高维空间中推广和应用。

\subsubsection{附录：重要公式汇总}

\begin{enumerate}
  \item \textbf{梯度}：
    \[
    \nabla f = (df)^\sharp
    \]
  \item \textbf{散度}：
    \[
    \operatorname{div} \vec{F} = *d(*\omega)
    \]
  \item \textbf{旋度}：
    \[
    \operatorname{curl} \vec{F} = (*d\omega)^\sharp
    \]
  \item \textbf{拉普拉斯算子}（对于标量函数）：
    \[
    \Delta f = \operatorname{div}(\nabla f) = *d*d f
    \]
\end{enumerate}
`
)

_以下内容是2023年春王晓峰老师微积分A2的课程内容：_

=== 王晓峰如是说

对于微分形式$omega$
$
integral_(partial Omega) omega = integral_Omega dd(omega)\
$

==== 向量场与一阶微分形式、梯度
$
vb(e_i) "基底向量", dd(x^i) "对偶基", dd(x^i)(vb(e_j)) = delta^i_j\
$
$vb(X)=sum X^i vb(e_j)$和$omega=sum A_i dd(x^i)$对应，有
$
omega_(vb(X)) = vb(X) dot vb(v) ,forall vb(v)\
A_j = omega(vb(e_j)) = sum_i X^i vb(e_i) dot vb(e_j) = X^j g_(i j)\
$
从而
$
omega_(vb(X)) = sum_j A_j dd(x^j) = sum_(i,j) X^i g_(i j) dd(x^j)\
vb(X)_omega = sum_i X^i vb(e_i) = sum_(i,j) A_j g^(i j) vb(e_i)\
$
有微分和梯度
$
dd(f) = sum_i partialderivative(f,x^i) dd(x^i)\
grad f = sum_(i,j) partialderivative(f,x^i) g^(i j) vb(e_j)\
$
函数的微分与坐标和度量无关、梯度有关。正交坐标系下
$
grad f = sum_i 1/norm(vb(e_i)) partialderivative(f,x^i) vu(e_i) = sum_i 1/sqrt(g_(i i)) partialderivative(f,x^i) vu(e_i)\
$
由此可以得到球、柱、直角坐标系下的梯度。

==== 向量场与二阶微分形式、旋度

$
vb(e_1), vb(e_2), vb(e_3) "基底向量", dd(x^1), dd(x^2), dd(x^3) "对偶基"
$
向量场$vb(X)=X^1 vb(e_1) + X^2 vb(e_2) + X^3 vb(e_3)$对应二阶微分形式
$
omega = A_1 dd(x^2) and dd(x^3) + A_2 dd(x^3) and dd(x^1) + A_3 dd(x^1) and dd(x^2)\
$
即
$
omega(vb(u), vb(v)) = vb(X) dot (vb(u) times vb(v))
$
从而*向量场和二阶微分形式的对应*
$
A_1 = omega(vb(e_2), vb(e_3)) = X^1 vb(e_1) dot (vb(e_2) times vb(e_3))
$
对于一阶微分形式$eta = sum B_i dd(x^i)$，有
$
dd(eta) = sum dd(B_i) and dd(x^i) = sum_"cyc" (partialderivative(B_i,x^j) - partialderivative(B_j,x^i)) dd(x^i) and dd(x^j)\
$
对应的
$
curl vb(X) = sum_"cyc" (partialderivative(sum_(k=1)^3 X^k g_(k i),x^j) - partialderivative(sum_(k=1)^3 X^k g_(k j),x^i)) vb(e_i)\
$
正交坐标系下
$
curl vb(X) = 1/(norm(vb(e_1)) norm(vb(e_2)) norm(vb(e_3))) mat(
vb(e_1), vb(e_2), vb(e_3);
partialderivative(,x^1), partialderivative(,x^2), partialderivative(,x^3);
X^1 norm(vb(e_1))^2, X^2 norm(vb(e_2))^2, X^3 norm(vb(e_3))^2;delim: "|"
)\
$
可以得到球、柱、直角坐标系下的旋度。

==== 向量场与三阶微分形式、散度

向量场$vb(X)=X^1 vb(e_1) + X^2 vb(e_2) + X^3 vb(e_3)$对应二阶微分形式
$
omega = A_1 dd(x^2) and dd(x^3) + A_2 dd(x^3) and dd(x^1) + A_3 dd(x^1) and dd(x^2)\
$
有三阶微分形式
$
dd(omega) = sum_i partialderivative(A_i,x^i) dd(x^1) and dd(x^2) and dd(x^3)\
$
从而散度
$
dd(omega) (vb(e_1), vb(e_2), vb(e_3)) = div vb(X) vb(e_1) dot (vb(e_2) times vb(e_3))\
$
从而
$
div vb(X) = 1/(vb(e_1) dot (vb(e_2) times vb(e_3))) sum_(i=1)^3 partialderivative(X^i vb(e_1)dot (vb(e_2)times vb(e_3)),x^i) = 1/sqrt(det G) sum_(i=1)^3 partialderivative(X^i sqrt(det G),x^i)\
$
在正交坐标系下
$
div vb(X) = 1/(norm(vb(e_1)) norm(vb(e_2)) norm(vb(e_3))) sum_(i=1)^3 partialderivative(X^i norm(vb(e_1)) norm(vb(e_2)) norm(vb(e_3)),x^i)\ 
$
可以得到球、柱、直角坐标系下的散度。