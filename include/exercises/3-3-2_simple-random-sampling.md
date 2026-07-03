Question
========

*What is the probability that any of the 2,700 scans available is selected?*

Answerlist
----------
* *`r round(180/2700,3)`*
* *`r round(1/2700,3)`*
* *`r round(1/180,3)`*
* *none of the above*


Solution
========

*The probability that a specific scan is selected can be obtained by considering that it could be selected at any of the 180 draws.*

*These events are mutually exclusive, and the probability at each draw is $1/2700$.*

*Thus, the total probability is:*

$180 \times (1/2700) = 180/2700 = `r round(180/2700,3)`$

**PROOF**

Let $N$ be the population size and $n$ the sample size. Fix one subject $s$, and let $A$ be the event that $s$ is selected.

For $i = 1, \ldots, n$, define:

- $E_i$: subject $s$ is selected on draw $i$.

Because sampling is without replacement, subject $s$ can be selected at most once. Hence the events $E_1, \ldots, E_n$ are mutually exclusive. Therefore,

$$
P(A) = \sum_{i=1}^n P(E_i).
$$

Now,

$$
P(E_i)
=
\left(\frac{N-1}{N}\right)
\left(\frac{N-2}{N-1}\right)
\cdots
\left(\frac{N-(i-1)}{N-(i-2)}\right)
\left(\frac{1}{N-(i-1)}\right).
$$

All factors cancel except the first denominator, so

$$
P(E_i) = \frac{1}{N}.
$$

Thus,

$$
P(A)
=
\sum_{i=1}^n \frac{1}{N}
=
\frac{n}{N}.
$$

Therefore,

$$
P(\text{a given subject is selected}) = \frac{n}{N}.
$$

Meta-information
================
exname: simple_random_sampling
extype: schoice
exsolution: 1000