Question
========

*What would be the $t$ value if the sample size was $n=`r n-6`$, excluding the first six subjects in @tbl-3-4-1?* ##ANSWER1##

*Would the decision to reject $H_0$ stand?* ##ANSWER2##


Answerlist
----------
* no
* yes



Solution
========

If data was collected only the first `r n-6` subjects in @tbl-3-4-1, we would have that:

$$
\begin{aligned}
\overline{x} &= `r round(mean(fev1[6:n]),2)` \text{ L} \\
s &= `r round(sd(fev1[6:n]),2)` \text{ L} \\
n &= `r n-6` \text{ athletes}
\end{aligned}
$$

The new $t$ value would therefore be:

$$
t = \frac{`r round(mean(fev1[6:n]),2)` - `r mu_fev`}{`r round(sd(fev1[6:n]),2)`/\sqrt{`r n-6`}} = 
`r round((round(mean(fev1[6:n]),2) - mu_fev)/(round(sd(fev1[6:n]),2)) * sqrt(n-6),3)`
$$

The new critical value $t_c$ would be:

$$
t_c = t_{\nu,1-\alpha} = t_{`r n-6`,0.95} = `r round(qt(0.95, n-7))`
$$

Given $t<t_c$ we do not reject $H_0$

Meta-information
================

exname: se_and_t_value
extype: cloze
exsolution: `r round((round(mean(fev1[6:n]),2) - mu_fev)/(round(sd(fev1[6:n]),2)) * sqrt(n-6),3)`|10
exclozetype: num|schoice
extol: 0.01

