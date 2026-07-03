Question
========

#### Guided Exercise

*Given the following quantities computed from the data reported in @tbl-3-7-1:*

$$
\begin{aligned}
S_{xx} &= \sum_{i=1}^n \left(x_i-\overline{x}\right)^2 = `r sxx`\\
s^2 &= MS_\text{E} = \frac{SS_\text{E}}{n-2} = `r MSe`
\end{aligned}
$$

*Compute the $t$ value for $\hat{\beta}_1$ and draw your conclusion about rejection of the null hypothesis in favor of the alternative hypothesis $H_1:\beta_1 \ne 0$.*

:::: {.columns}
::: {.column width="50%"}
*The $t$ value is:*

##ANSWER1##
:::
::: {.column width="50%"}
*The conclusion is to:*

##ANSWER2##
:::
::::

Answerlist
----------
* *reject $H_0: \beta_1 = 0$*
* *reject $H_1: \beta_1 > 0$*
* *reject $H_0: \beta_1 \ne 0$*
* *reject $H_1: \beta_1 = 0$*

Solution
========

The $t$ value is computed according to @eq-t-beta1:

$$
t = \frac{`r round(b1,3)`}{`r round(sqrt(MSe / sxx),3)`} = `r round(tb1,3)`
$$

Given the alternative hypothesis, the probability of observing a $t$ value as extreme as that observed is:

$$
2\times P\left(t_{\nu=`r n-2`}>|t|=`r round(abs(tb1),3)`\right) = `r sprintf("%1.2e",ptb1)`
$$

Being smaller than a plausible $\alpha = 0.05$, the conclusion is that $H_0: \beta_1=0$ should be rejected.

Meta-information
================

extype: cloze
exclozetype: num|schoice
exsolution: `r round(tb1,1)`|1000
extol: 0.2
exname: t test on estimated beta 1