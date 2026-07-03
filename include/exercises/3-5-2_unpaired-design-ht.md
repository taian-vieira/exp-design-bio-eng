Question
========

#### Hypothesis Testing with Unpaired Design and Equal variances {#sec-ht-exercise}

\

Considering the data reported in @tbl-3-5-1, address the following points:

1. *The assumed null hypothesis for the population mean difference $\mu_d$ in jump height is:* ##ANSWER1##

2. *What is the appropriate test statistic?* ##ANSWER2##

3. *For $\alpha = 0.05$, determine the critical value $t_c =$* ##ANSWER3##

4. *Compute the test statistic $t =$* ##ANSWER4##

*Given that the $t$ value obtained is* ##ANSWER5## *the critical value, the null hypothesis is* ##ANSWER6##

Answerlist
----------
* $H_0: \mu_d = \mu_x - \mu_y$
* $H_1: \mu_d = 0$
* $H_0: \mu_d = 0$
* $H_1: \mu_d > 0$
* z-score
* t value
* y-x
* *greater*
* *smaller*
* *rejected*
* *not rejected*

Solution
========

**1. The null hypothesis**

Under the null hypothesis, there is no sex-difference in jump height. Therefore, $H_0: \mu_d=0$.

**2. The test statistic**

Given the standard deviation is computed from the experimental data and the assumption of independence and Normal distribution, the Student's $t$ is the appropriate test statistic.

**3. The critical value**

This is a two-tailed test, as interest lies in testing for a difference in jump height. No assumption is made about a direction for the mean difference.
For $\nu = n+m-2 = `r n-+m-2`$ and $\alpha = 0.05$, the critical value is given by:

$$
P(|T|>t_{\nu,1-\frac{\alpha}{2}}) = P(|T|>t_{`r n+m-2`,97.5\%}) = 0.05, \quad t_{`r n+m-2`,97.5\%} = `r round(qt(0.975, n+m-2),2)`
$$

**4. Computing the $t$ value**

First we compute the difference between means $\overline{d}$ and the pooled standard deviation $s_p$:

$$
\begin{aligned}
\overline{d} &= \overline{x}-\overline{y} = `r xbar` - `r ybar` = `r xbar-ybar` \text{ cm} \\
s_p &= \sqrt{s_p^2} = \sqrt{\frac{`r sx` \times `r n-1` + `r sy` \times `r m-1`}{`r m+n-2`}} = `r sp` \text{ cm}
\end{aligned}
$$

Then, using @eq-t-equal-variances, the value for the test statistic is:

$$
t = \frac{\overline{d}-0}{s_p \sqrt{\frac{1}{n} + \frac{1}{m}}} = `r round( (xbar - ybar) / (sp * sqrt(1/n+1/m)),2)`
$$

**5. Taking a decision**

Given $|t|$ is greater than the critical value, the hypothesis of comparable jump height between male and female players should be rejected.


Meta-information
================

exname: distributions
extype: cloze
exsolution: 0010|010|`r round(qt(0.975, n+m-2),2)`|`r round( (xbar - ybar) / (sp * sqrt(1/n+1/m)),2)`|10|10
exclozetype: schoice|schoice|num|num|schoice|schoice
extol: 0.01

