Question
========

*If 50 scans were lost due to technical reasons (i.e., $N=`r N-50`$), the step $k$ would not be an integer anymore ($k=`r N-50`/`r n`=`r kni`$. A workaround is necessary. Considering the random starting at $`r start`$, what option below for the first 4 scans would represent an appropriate workaround for a non-integer $k$?*

Answerlist
----------
* $\{`r paste0(round(seq(11,11+15*5,14.7)), collapse = ", ")`\}$
* $\{`r paste0(round(seq(10,11+15*5,14.7)), collapse = ", ")`\}$
* $\{`r paste0(round(seq(11,11+15*5,17)), collapse = ", ")`\}$
* *none of the above*


Solution
========

The first sequence above was achieved by considering the non-integer step and rounding to obtain consecutive scans. As a result, intervals were alternated between `r round(kni)-1` and `r round(kni)+1`, so that the averaging step equals $k=`r k`$

Meta-information
================
exname: systematic_sampling
extype: schoice
exsolution: 1000