title: A generic method to construct matrix product operator
date: 2021-09-16
tags: tensor network
category: PHYSICS

# Preliminary

## From a many-body operator (MBO) to a matrix product operator (MPO)

We are talking about quantum many-body models on a lattice $\Lambda$.
A lattice $\Lambda$ is a graph consisting of $|\Lambda|$ sites, which are always labeled in a one-dimensional array $\left\{0, \dots, |\Lambda|-1\right\}$ in a specific way in the first place.
At each site, there is a local single-body Hilbert space. 
A quantum many-body Hilbert space is defined as the *tensor product* of the local Hilbert spaces at each site.
MBOs, such as various terms in the Hamiltonian of a quantum model or any kinds of observables, are also the tensor product of all the local operators.
Note that we always simplify a MBO as it looks just like a single-body operator (SBO) when we write down some many-body quantum models, which, however, might lead to some misleading.
For examples,
$$
\begin{equation}
    O_{j}\equiv\mathbb{1}\otimes\cdots{\mathop{o}\limits_{j}}\cdots\otimes\mathbb{1}, \quad O_{i}\cdot O_{j}\equiv\mathbb{1}\otimes\cdots{\mathop{o}\limits_{i}}\cdots{\mathop{o}\limits_{j}}\cdots\otimes\mathbb{1}
\end{equation}
$$
for $i, j=0, \cdots, |\Lambda|-1$.
The upper-case letters denote MBOs while the lower-case letters denote SBOs.
$O_{j}$ means that this MBO merely operates on site $j$ nontrivially while trivially on other sites.
MPO is the idea to encode this tensor product structure of a MBO into the matrix product form of local operators.
Formally,
$$
\begin{equation}
    O=W_{\gamma_{0}\gamma_{1}}^{j_{0}^{\prime}j_{0}}W_{\gamma_{1}\gamma_{2}}^{j_{1}^{\prime}j_{1}}\cdots W_{\gamma_{N-1}\gamma_{N}}^{j_{N-1}^{\prime}j_{N-1}}|\{j^{\prime}\}\rangle\langle\{j\}|.
\end{equation}
$$
$\gamma_{0, N}$ are only one-dimensional virtual indices.
The dimension of other internal virtual indices $\gamma$s depends on some technical details, which we will talk later.

## Lattice topology

Given an arbitrary quantum many-body Hamiltonian $H=\sum_{j}h_{j}$ and a lattice $\Lambda$, we can define a topological space based on $\Lambda$ as $(\Lambda, \mathcal{T})$.
$\mathcal{T}$ is the set consisting of several subsets of $\Lambda$. $\forall~\omega_{j}\subset\Lambda$ and $\omega_{j}\in\mathcal{T}$ includes all sites on which a term $h_{j}$ in the Hamiltonian operates nontrivially.

# Lower-triangular matrix construction

Practically we can accomplish this goal in a lower triangular matrix form[^McCulloch].
Assume the dimension of the MPO frame is $D$.
Without loss of generality, the $W_{0, 0}\equiv\mathbb{1}$ and $W_{D-1, D-1}=\mathbb{1}$ are set as the identity operators.
For the onsite term we have,
$$
\begin{equation}
    W_{1}=
    \begin{pmatrix}
        \mathbb{1} & 0 \\
        X & \mathbb{1}
    \end{pmatrix}.
\end{equation}
$$

## Two-body operator

For the nearest-neighbor two-body interactions $\sum_{j}X_{j}Y_{j+1}$, we have
$$
\begin{equation}
    W_{2}=
    \begin{pmatrix}
        \mathbb{1} & 0 & 0 \\
        Y & 0 & 0 \\
        0 & X & \mathbb{1}
    \end{pmatrix}.
\end{equation}
$$
How about arbitrary long-range interactions such as $\sum_{i, j}X_{i}Y_{j}$?
For the MPOs on site-$i, j$, they look like $W_{2}$.
Furthermore, the corresponding diagonal matrix elements of the MPOs between site-$i$ and -$j$ should have identity $\mathbb{1}$.
Firstly let us assume on each bond there are at most $N_{\text{op}}$ terms.
$d=j-i$.
For the full Hamiltonian $H=\sum_{k}h_{k}$, which may consists various $d_{n}$ ranges of interactions, we only need to encode different ranges of interacting terms into different blocks of the MPO.
In this sense, the dimension of the MPO frame turns out to be
$$
\begin{equation}
    D=2+\sum_{n}d_{n}\cdot{N}_{\text{op}}.
\end{equation}
$$
That is, longer-range interactions require larger MPO, of which dimension increases polynomially.
Given a specific $d_{n}$, the dimension of this very block is $d_{n}N_{\text{op}}$.
Within this block, the operators also should be place into sub-blocks with the dimension $N_{\text{op}}$ to avoid unwanted other possible overlaps.
Practically, the all the bonds in the subset $\{\omega_{j}^{(n)}\}\subset\mathcal{T}$ with all the same $d_{n}$ can be placed in a increasing order in terms of the head site labels.


## $N$-body operator

For arbitrary $N$-body operators such as strings or loops, it is quite similar as the two-body operator with long-range interactions.
The diagonal elements of the MPOs on the sites between the head and tail are inserted with the corresponding operators instead of identity operators.

The original notebook and code can be found [here](https://gitlab.com/waynezheng/public_notes/-/tree/main/sympy_long-range_mpon).

[^McCulloch]: [McCulloch, I. P. (2007). From density matrix renormalization group to matrix product states. Journal of Statistical Mechanics: Theory and Experiment, 2007(10):P10014–P10014.](https://iopscience.iop.org/article/10.1088/1742-5468/2007/10/P10014)  

