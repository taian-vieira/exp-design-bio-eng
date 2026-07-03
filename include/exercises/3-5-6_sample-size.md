Question
========

Assume that a researcher wants to compare jump height between two unpaired groups using a one-sided $t$-test.

The researcher expects a meaningful standardized effect size of $d = 0.6$, wants a significance level of $\alpha = 0.05$, and desires statistical power of $80\%$.

The planned allocation ratio is:

$$
a = \frac{m}{n} = 1.2
$$

Using the Normal approximation, the sample size for the first group is computed as:

$$
n = \left\lceil \frac{1+a}{a}
\left(
\frac{z_{1-\alpha} - z_{\beta}}{d}
\right)^2
\right\rceil
$$

Given that $z_{1-\alpha} = `r zc`$ and $z_{\beta} = `r zb`$, what is the required sample size for the first group?

Answerlist
----------

* `r ceiling((1+1.2)/1.2 * ((zc - zb)/0.6)^2)`

Solution
========

The required sample size for the first group is:

$$
n =
\left\lceil
\frac{1+1.2}{1.2}
\left(
\frac{`r zc` - (`r zb`)}{0.6}
\right)^2
\right\rceil
$$

Therefore:

$$
n =
\left\lceil
\frac{2.2}{1.2}
\left(
\frac{`r zc - zb`}{0.6}
\right)^2
\right\rceil
=
`r ceiling((1+1.2)/1.2 * ((zc - zb)/0.6)^2)`
$$

Given the allocation ratio $a = 1.4$, the sample size for the second group is:

$$
m = \lceil an \rceil
=
\lceil 1.2 \times `r ceiling((1+1.2)/1.2 * ((zc - zb)/0.6)^2)` \rceil
=
`r ceiling(1.2 * ceiling((1+1.2)/1.2 * ((zc - zb)/0.6)^2))`
$$

Thus, the study would require `r ceiling((1+1.2)/1.2 * ((zc - zb)/0.6)^2)` participants in the first group and `r ceiling(1.4 * ceiling((1+1.4)/1.4 * ((zc - zb)/0.5)^2))` participants in the second group.

Meta-information
================

exname: sample_size_unpaired_groups  
extype: num  
exsolution: `r ceiling((1+1.2)/1.2 * ((zc - zb)/0.6)^2)`  
exdigits: 0  
extol: 0