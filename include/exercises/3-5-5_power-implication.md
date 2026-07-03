Question
========

Consider the jump height data for female ($n=3$) and male ($m=5$) volleyball players presented in @tbl-3-5-2. The observed sum of ranks for the female group is $w_f = `r wf`$, and the total number of possible rank assignments is $n_a = `r nassignments`$.

Assume now the alternative hypothesis that **female players tend to have higher jump heights than male players**.

What is the probability of observing a value of the test statistic $W$ as large as or larger than the observed value $w_f$ under the null hypothesis?

$$
P(W \ge w_f) = \; ?
$$

Answerlist
----------

Solution
========

For the alternative hypothesis that female players tend to have higher jump heights than male players, the relevant probability is the upper-tail probability:

$$
P(W \ge w_f)
$$

For the observed data, $w_f = `r wf`$. Therefore:

$$
P(W \ge `r wf`) =
\frac{\#(W \ge `r wf`)}{`r nassignments`}
=
`r (sum(Wvals >= wf))`/`r nassignments`
=
`r (sum(Wvals >= wf))/nassignments`
$$

Meta-information
================

exname: wilcoxon_upper_tail_jump_height  
extype: num  
exsolution: `r (sum(Wvals >= wf))/nassignments`  
exdigits: 4  
extol: 0.0001