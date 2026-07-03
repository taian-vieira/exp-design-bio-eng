Question
========

*The walk distance data reported in @tbl-3-6-1 were simulated considering an equal number of observations per group.*
*That data resulted in the ANOVA table reported above (@tbl-3-6-2)*
*Supposing that only the first:*

- *9 observations were taken for the physiotherapy group;*
- *8 observations were taken for the balance group;*
- *7 observations were taken for the strength group*

* and given that with unequal group sizes, the F-statistic is computed as:*

$$
F = \frac{SS_B / (I-1)}{SS_W / \sum_{i=1}^I (J_i - 1)}
= \frac{\sum_{i=1}^I J_i (\bar{Y}_i - \bar{Y})^2 / (I-1)}
{\sum_{i=1}^I \sum_{j=1}^{J_i} (Y_{ij} - \bar{Y}_i)^2 / \sum_{i=1}^I (J_i - 1)}
$$

*The partially completed ANOVA table would change as follows:*

| Source          | Degrees of Freedom | Sum of Squares | Mean Square | F-Ratio |
|-----------------|-------------------|----------------|-------------|---------|
| Between Groups  | 2                 | 0.0805         |             |         |
| Within Groups   | 21                | 0.0197         |             |         |

*Compute the missing quantities.*

*What is the value of the between-group mean square ($MS_\text{B}$)?* ##ANSWER1##

*What is the value of the within-group mean square ($MS_\text{W}$)?* ##ANSWER2##

*What is the value of the F-ratio?* ##ANSWER3##

---

Answerlist
----------
* 0.0403
* 0.0094
* 0.00094
* 4.29
* 42.9
* 2.06
* 0.0403
* 0.0094
* 0.00094
* 4.29
* 42.9
* 2.06
* 0.0403
* 0.0094
* 0.00094
* 4.29
* 42.9
* 2.06

Solution
========

The mean squares are computed as:

$$
MS_B = \frac{SS_B}{I-1} = \frac{0.0805}{2} = 0.04025 \approx 0.0403
$$

With unequal group sizes, the between-group sum of squares uses weights $J_i$:

$$
SS_B = \sum_{i=1}^I J_i (\bar{Y}_i - \bar{Y})^2
$$

instead of $J(\bar{Y}_i - \bar{Y})^2$ in the balanced case.

---

$$
MS_W = \frac{SS_W}{\sum_{i=1}^I (J_i - 1)} = \frac{0.0197}{21} \approx 0.00094
$$

The within-group degrees of freedom now depend on all group sizes:

$$
\sum_{i=1}^I (J_i - 1)
$$

instead of $I(J-1)$ in the balanced case.

---

Finally, the F-statistic is:

$$
F = \frac{MS_B}{MS_W} = \frac{0.04025}{0.00094} \approx 42.9
$$


Meta-information
================

exname: anova_unequal_sample_sizes  
extype: cloze  
exsolution: 100000|001000|000010  
exclozetype: schoice|schoice|schoice