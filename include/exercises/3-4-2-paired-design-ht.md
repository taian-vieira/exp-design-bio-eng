Question
========

#### Hypothesis Testing with Paired Design

\

1. *The assumed null hypothesis for the population difference $\mu_d$ in aggregation is:* ##ANSWER1##

2. *What is the appropriate test statistic?* ##ANSWER2##

3. *For $\alpha = 0.05$, determine the critical value $t_c =$* ##ANSWER3##

4. *Compute the test statistic $t =$* ##ANSWER4##

*Given that the $t$ value obtained is* ##ANSWER5## *the critical value, the null hypothesis is* ##ANSWER6##

Answerlist
----------
* $H_0: \mu_d = y - x$
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

Under the null hypothesis, smoke does not increase platelet aggregation. Therefore, $H_0: \mu_d=0$.

**2. The test statistic**

Given the standard deviation is computed from the experimental data and the assumption of independence and Normal distribution, the Student's $t$ is the appropriate test statistic.

**3. The critical value**

This is a one-tailed test, as interest lies in testing for an increased aggregation with time.
For $\nu = n-1 = `r n-1`$ and $\alpha = 0.05$, the critical value is given by:

$$
P(T>t_{`r n-1`,95\%}) = 0.05, \quad t_{`r n-1`,95\%} = `r round(qt(0.95, n-1),2)`
$$

**4. Computing the $t$ value**

Using @eq-xbar-t, the value for the test statistic is:

$$
t = \frac{\overline{d}-0}{s_d / \sqrt{n}} = `r round(df_full$Difference[n+1] * sqrt(n) / df_full$Difference[n+2],2)`
$$

**5. Taking a decision**

Given the $t$ value is greater than the critical value, the hypothesis of no increase in platelet aggregation should be rejected.


Meta-information
================

exname: distributions
extype: cloze
exsolution: 0010|010|`r qt(0.95, n-1)`|`r df_full$Difference[n+1] * sqrt(n) / df_full$Difference[n+2]`|10|10
exclozetype: schoice|schoice|num|num|schoice|schoice
extol: 0.01

