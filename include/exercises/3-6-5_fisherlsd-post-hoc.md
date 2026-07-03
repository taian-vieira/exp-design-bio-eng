Question
========

*Given the following probability, considering the Fisher LSD post-hoc test for groups 1 and 2 (physiotherapy and balance training):*

$$
P\left(t>|t_{1,2}|\right) \times 2 = `r pt((Yi.[1]-Yi.[2]) / sqrt(msw/5), df = 27, lower.tail = FALSE) * 2`
$$

*we can say that patients undergoring physiotherapy walk over*  ##ANSWER1## *distances than those undergoing balance training.*

---

Answerlist
----------
* significantly different
* significantly larger
* significantly smaller

Solution
========

The probability indicated above $P\left(t>|t_{1,2}|\right) \times 2$ is a two-tailed probability. Therefore, it refers to the alternative hypothesis:

$$
\mu_1 \ne \mu_2
$$

This test only evaluates whether the two group means are significantly different. It does not test a directional hypothesis such as $\mu_1 > \mu_2$ or $\mu_1 < \mu_2$

Therefore, given that the probability obtained is much lower than the usual significance level $ \alpha = 0.05 $, we reject the null hypothesis and conclude that the two groups differ significantly.

The answers “significantly larger” and “significantly smaller” would require a directional, one-tailed alternative hypothesis. They are not appropriate conclusions from the two-tailed probability used here.

To determine the direction of the effect, one should inspect the sign of the difference $(\overline{Y}_1 - \overline{Y}_2)$: a positive value indicates that group 1 has a larger mean, while a negative value indicates that group 2 has a larger mean.

Meta-information
================

exname: fisher_posthoc
extype: cloze  
exsolution: 100
exclozetype: schoice