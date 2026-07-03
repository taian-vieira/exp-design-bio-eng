Question
========

*Based on the sum of squares identity, on the shorthand notations, and given the definition just presented for the sum of squares of residuals:*

$$
SS_\text{E}
=\sum_{i=1}^n \left(y_i-\hat{y}_i\right)^2
=\sum_{i=1}^n\left[y_i-\overline{y}-\frac{S_{xy}}{S_{xx}}\left(x_i-\overline{x}\right)\right]^2
$$

*It follows that:*

$$
SS_\text{E} = S_{yy} - \frac{S_{xy}^2}{S_{xx}}=SS_\text{tot}-SS_\text{R}
$$

*What therefore can be said about $SS_\text{E}$ and $SS_\text{tot}$?*

Answerlist
----------
* $SS_\text{E}<SS_\text{tot}$
* $SS_\text{E}>SS_\text{tot}$
* $SS_\text{E}=SS_\text{tot}$
* *none of the above*

Solution
========

Given the regression sum of squares is non-negative:

$$
\frac{S_{xy}^2}{S_{xx}}\ge 0
$$

the residual sum of squares cannot be greater than the total sum of squares:

$$
SS_\text{E}\le SS_\text{tot}
$$

When the explanatory variable contributes to explaining the response variable, $SS_\text{R}>0$ and therefore:

$$
SS_\text{E}<SS_\text{tot}
$$

Meta-information
================

exname: sum_of_squares_relationship
extype: schoice
exsolution: 1000
exshuffle: 4