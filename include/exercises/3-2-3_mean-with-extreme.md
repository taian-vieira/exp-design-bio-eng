Question
========
*If the first observation in @tbl-3-2-1 was 95 instead of `r pam[1]`, what would be the new mean value?* ##ANSWER1##

*Is it necessary to know all `r n` values to recompute the mean with the new entry?* ##ANSWER2##

Answerlist
----------
* yes
* no

Solution
========
Given the $\mu = `r round(mean(pam[1:n]),1)`$ computed over the `r n` values in @tbl-3-2-1, to compute the updated mean ($\mu_u$) with the new entry
it would be sufficient to: $\mu_u=(\mu \times n - `r pam[1]` + 95)/n = `r round(mean(c(95,pam[2:20])),1)`$

Meta-information
================
exname: mean computation
extype: cloze
exsolution: `r round(mean(c(95,pam[2:20])),1)`|01
exclozetype: num|schoice
extol: 0.1