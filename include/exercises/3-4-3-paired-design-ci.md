Question
========

#### Confidence Interval with Paired Design

\

Assuming the data shown in @tbl-3-4-3 are independent and Normally distributed, compute:

1. *The lower* ##ANSWER1## *and the upper* ##ANSWER2## *bounds of the 95% confidence interval for $\mu_d$.*

2. *The lower* ##ANSWER3## *and the upper* ##ANSWER4## *bounds of the 99% confidence interval for $\mu_d$.*

Answerlist
----------

Solution
========

The confidence interval for the population mean paired difference $\mu_d$ is computed according to @eq-t-ci:

$$
CI_{1-\alpha} = \overline{d} \pm t_{\nu,1-\alpha/2}\frac{s_d}{\sqrt{n}}
$$

**1. 95% CI**

In this case, $\alpha = 0.05$, so:

$$
t_{\nu,1-\alpha / 2} = t_{`r n-1`,97.5\%} = `r round(qt(0.975, n-1),2)`
$$

The lower ($l$) and upper ($u$) bounds of the $CI_{95\%}$ are:

$$
\begin{aligned}
l &= \overline{d} - t_{\nu,1-\alpha/2}\frac{s_d}{\sqrt{n}} = `r round(df_full$Difference[n+1] - df_full$Difference[n+2] * qt(0.975, n-1) / sqrt(n),2)` \\
u &= \overline{d} + t_{\nu,1-\alpha/2}\frac{s_d}{\sqrt{n}} = `r round(df_full$Difference[n+1] + df_full$Difference[n+2] * qt(0.975, n-1) / sqrt(n),2)`
\end{aligned}
$$

**2. 99% CI**

The procedure is analogous. The only difference is the critical value:

$$
t_{\nu,1-\alpha / 2} = t_{`r n-1`,99.5\%} = `r round(qt(0.995, n-1),2)`
$$

Thus:

$$
\begin{aligned}
l &= `r round(df_full$Difference[n+1] - df_full$Difference[n+2] * qt(0.995, n-1) / sqrt(n),2)` \\
u &= `r round(df_full$Difference[n+1] + df_full$Difference[n+2] * qt(0.995, n-1) / sqrt(n),2)`
\end{aligned}
$$

Meta-information
================

exname: distributions
extype: cloze
exsolution: `r round(df_full$Difference[n+1] - df_full$Difference[n+2] * qt(0.975, n-1) / sqrt(n),2)`|`r round(df_full$Difference[n+1] + df_full$Difference[n+2] * qt(0.975, n-1) / sqrt(n),2)`|`r round(df_full$Difference[n+1] - df_full$Difference[n+2] * qt(0.995, n-1) / sqrt(n),2)`|`r round(df_full$Difference[n+1] + df_full$Difference[n+2] * qt(0.995, n-1) / sqrt(n),2)`
exclozetype: num|num|num|num
extol: 0.01