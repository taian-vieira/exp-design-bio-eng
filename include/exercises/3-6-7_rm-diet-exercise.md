Question
========

*The partial repeated-measures ANOVA table below summarizes the analysis performed to assess the effect of a diet program on body mass over three time points.*

*Complete the missing values in the table and use the result to decide whether there is evidence of a diet effect.*

| Source | Degrees of Freedom | Sum of Squares | Mean Square |
|:--|:--:|:--:|:--:|
| Subjects | $\nu_J = 3$ | $SS_\text{J} = 922.3$ | $MS_\text{J} = 307.4$ |
| Time | $\nu_I = 2$ | $SS_\text{I} = 84.5$ | $MS_\text{I} = 42.3$ |
| Error | $\nu_E = ?$ | $SS_\text{E} = ?$ | $MS_\text{E} = ?$ |
| Total | $\nu_{\text{TOT}} = 11$ | $SS_{\text{TOT}} = 1022.3$ | |

:::: {.columns}
::: {.column .small-text width=20%}
$\nu_E =$ ##ANSWER1##
:::
::: {.column .small-text width=20%}
$SS_\text{E} =$ ##ANSWER2##
:::
::: {.column .small-text width=20%}
$MS_\text{E} =$ ##ANSWER3##
:::
::: {.column .small-text width=20%}
$f =$ ##ANSWER4##
:::
::: {.column .small-text width=20%}
$P(F_{2,\nu_\text{E}} > f)$ = ##ANSWER5##
:::
::::

*What is your decision?*

Answerlist
----------

* Reject $H_0$: there is evidence of a significant diet effect.
* Do not reject $H_0$: there is no evidence of a significant diet effect.

Solution
========

The degrees of freedom of residuals as well as the residual sum of squares are obtained from the identities:

$$
\begin{aligned}
\nu_\text{tot} &= \nu_\text{I} + \nu_\text{J} + \nu_\text{E} \\
SS_\text{tot} &= SS_\text{I} + SS_\text{J} + SS_\text{E}
\end{aligned}
$$

Therefore,

$$
\begin{aligned}
\nu_\text{E} &= 11 - 3 - 2 = 6 \\
SS_\text{E} &= 1022.3 - 84.5 - 922.3 = 15.5
\end{aligned}
$$

The residual mean square is:

$$
MS_E = \frac{SS_\text{E}}{\nu_\text{E}}
= \frac{15.5}{6}
= 2.6
$$

The observed Fisher statistic is:

$$
F = \frac{MS_\text{I}}{MS_\text{E}}
= \frac{42.3}{2.6}
= 16.3
$$

Using the [$F$ distribution interactive plot](#sec-finteractiveplot) with $\nu_I=2$ and $\nu_E=6$ degrees of freedom:

$$
p = P(F_{2,6} > 16.3) \approx 0.004
$$

Because $p < 0.05$, the null hypothesis is rejected. There is evidence of a significant diet effect.

Meta-information
================

exname: repeated_measures_anova_table  
extype: cloze  
exclozetype: num|num|num|num|num|schoice
exsolution: 6|15.5|2.6|16.3|0.004|10
extol: 0|0.1|0.1|0.2|0.001|0