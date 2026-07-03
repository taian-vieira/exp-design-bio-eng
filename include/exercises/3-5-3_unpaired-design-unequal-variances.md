Question
========

#### Hypothesis Testing with Unpaired Design and Unequal Variances

*When the data are heteroskedastic, a correction to the degrees of freedom associated with the test statistic is necessary.*

*What is the critical value of the $t$-distribution associated with the test statistic in @eq-t-unequal-variances?* 

##ANSWER1##


Solution
========

The critical value depends on $\alpha$ and on the degrees of freedom $\nu$. Given the sample sizes $n = 7$ and $m = 10$, the Welch–Satterthwaite correction (@eq-dof-correction) yields:

$$
\nu_u = \frac{\left(\frac{`r sx`^2}{`r n`} + \frac{`r sy`^2}{`r m`}\right)^2}{\frac{\left(\frac{`r sx`^2}{`r n`}\right)^2}{`r n` - 1} + \frac{\left(\frac{`r sy`^2}{`r m`}\right)^2}{`r m` - 1}} = `r round(nu, 2)`
$$

Rounding $\nu_u$ to $`r round(nu)`$, the critical value is:

$$
t_{\nu, 1-\alpha/2} = t_{`r round(nu)`, 0.975} = `r round(qt(0.975, round(nu)), 2)`
$$


Meta-information
================

exname: unequal_variance  
extype: cloze  
exsolution: `r round(qt(0.975, round(nu)),2)`  
exclozetype: num  
extol: 0.01