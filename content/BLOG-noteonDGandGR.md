# Chapter 1 Basic introduction to toplogical space

## Set theory preliminaries 

Set: a collection of elements. $A, B, \cdots$. Empty set: $\emptyset$. Union: $A\cup{B}\coloneqq\left\{x\vert{x}\in{A}~\text{or}~x\in{B}\right\}$. Intersection: $A\cap{B}\coloneqq\left\{x\vert{x}\in{A}, x\in{B}\right\}$. Difference: $A-B\coloneqq\left\{x\vert{x}\in{A}, x\notin{B}\right\}$.

**De Morgan's laws**:
- $A-\left(B\cap{C}\right)=\left(A-B\right)\cup\left(A-C\right)$,
- $A-\left(B\cup{C}\right)=\left(A-B\right)\cap\left(A-C\right)$.

*Proof*: If $x\in{A}-\left(B\cap{C}\right)$, thus $x\in{A}, x\notin\left(B\cap{C}\right)$. That is, $x\in{A}$ and $x\notin{B}$ or $x\notin{C}$. That is, $x\in\left(A-B\right)\cup\left(A-C\right)$. On the other hand, $x\in\left(A-B\right)\cup\left(A-C\right)$ means $x\in\left(A-B\right)$ or $x\in\left(A-C\right)$. That is, $x\in{A}, x\notin{B}$ or $x\in{A}, x\notin{C}$. Combining these two aspects, we have $x\in{A}$ and $x\notin{B}\cap{C}$, which means $x\in{A}-\left(B\cap{C}\right)$. The second one is similar. $\square$x

*Definition*: The Cartesian product of two non-empty sets $X$ and $Y$ is $X\times{Y}\coloneqq\left\{(x, y)\vert{x}\in{X}, y\in{Y}\right\}$. $(x, y)$ is an **ordered pair** comprised of $x$ and $y$.

*Example*: $\mathbb{R}^{2}\coloneqq\mathbb{R}\times\mathbb{R}$. Any real number pair $(x, y)\in\mathbb{R}^{2}$ is also the **natural coordinate** for this element. We can see that, $\mathbb{R}^{n}$ is born with a natural coordinate, while other sets may not be. The **distance** between two elements $x=(x^{0}, \cdots, x^{n-1}), y=(y^{0}, \cdots, y^{n-1})\in\mathbb{R}^{n}$ is defined to be:
$$
\left\vert{y-x}\right\vert\coloneqq\sqrt{\sum_{i=0}^{n-1}\left(y^{i}-x^{i}\right)^{2}}.
$$

*Definition*: Let $X$ and $Y$ be non-empty sets. A **map** from $X$ to $Y$ written as $f: X\rightarrow{Y}$ is a rule by which we assign a $y\in{Y}$ for **each** $x\in{X}$. $y$ is called the **image** of $x$ under $f$. The subset of $X$ satisfying $f^{-1}(y)\coloneqq\left\{x\in{X}, f(x)=y\right\}$ is called the **inverse image** of $y$. If $f$ can be written as some explicit formula, we may also write $y=f(x)$. The set $X$ is called the **domain**, the set of all images of $X$ is called the **range** of $f$.

There are some special maps:
- A map $f: X\rightarrow{Y}$ is called **injective** (or **one to one**) if $\forall~{y}\in{Y}$, there exists no more than one inverse image in $X$. That is, $x\neq{x}^{\prime}$ means $f(x)\neq{f}(x^{\prime})$. If $f$ is bijective, there exists a inverse map $f^{-1}: f[X]\rightarrow{X}$.
- A map $f: X\rightarrow{Y}$ is called **surjective** (or **onto**) if $\forall~{y}\in{Y}$, there exists at least one inverse image in $X$. $\iff f[X]=Y$.
- A map $f: X\rightarrow{Y}$ is called **bijective** if it is both injective as well as surjective.

Note: Only if $f$ is injective, there exists a inverse map $f^{-1}: f[X]\rightarrow{X}$. However, no matter if there exists inverse map or not, we can always define a **inverse image** of a subset $B\subset{Y}$:
$$
f^{-1}[B]\coloneqq\left\{x\in{X}\vert{f}(x)\in{B}\right\}\subset{X}.
$$

*Definition*: $X, Y, Z$ are three sets. Given two maps $f: X\rightarrow{Y}$ and $g: Y\rightarrow{Z}$, the **composite map** of $f$ and $g$ is defined as $g\circ{f}\coloneqq{g}(f(x))\in{Z}$.

So far, we can only talk about injectiveness and surjectiveness about maps if $X, Y$ are the most generic sets. Furthermore, if $X$ and $Y$ is endowed with more structures, we can talk about more requirements. For exmaple, we may further require the function $f: \mathbb{R}\rightarrow\mathbb{R}$ to be **continuous** and **smooth**.

Recall the $\epsilon$-$\delta$ definition in the calculus: $f$ is said to be continuous at $x$, $\forall~\epsilon>0$, $\exist~\delta>0$ such that when $\left\vert{x}-x^{\prime}\right\vert<\delta$, we must have $\left\vert{f}(x)-f(x^{\prime})\right\vert<\epsilon$. $f$ is continuous on $\mathbb{R}$ means that $f$ is continuous at every point of $\mathbb{R}$.

$\epsilon$-$\delta$ definition can be re-expressed by means of the concept of **open sets** without the requirement of the defintion of distance: Suppose $X=Y=\mathbb{R}$, $f: X\rightarrow{Y}$ is said to be continuous, only if the inverse image of any open set in $Y$ is the **union of open sets** in $X$.

## Toplogical space

## Compactness