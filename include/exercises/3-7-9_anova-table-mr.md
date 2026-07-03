Question
========

*Given the data reported in @tbl-3-7-4, complete the ANOVA table below and draw your conclusion.*

<div style="font-size: 80%;">

| Source          | Degrees of Freedom | Sum of Squares | Mean Square | F-Ratio |
|-----------------|--------------------|----------------|-------------|---------|
| Regression      | $\nu_\text{R}=$ ##ANSWER1## | $SS_\text{R} =$ `r format(round(SSr), scientific = FALSE)` | $MS_\text{R}=$ ##ANSWER5## | ##ANSWER7## |
| Residual        | $\nu_\text{E}=$ ##ANSWER2## | $SS_\text{E}=$ ##ANSWER4## | $MS_\text{E}=$ ##ANSWER6## | |
| Total           | $\nu_\text{tot}=$ ##ANSWER3## | $SS_\text{tot}=$ `r format(round(SStot), scientific = FALSE)` | | |

</div>

*Based on the value obtained for the F-ratio, your conclusion would be that...*

##ANSWER8##

Answerlist
----------
* 2
* 17
* 18
* 19
* 20
* 2
* 17
* 18
* 19
* 20
* 2
* 17
* 18
* 19
* 20
* `r round(MS_E)`
* `r round(SSe)`
* `r format(round(MS_R), scientific = FALSE)`
* `r format(round(SStot / df_tot), scientific = FALSE)`
* `r round(MS_E)`
* `r round(SSe)`
* `r format(round(MS_R), scientific = FALSE)`
* `r format(round(SStot / df_tot), scientific = FALSE)`
* `r round(MS_E)`
* `r round(SSe)`
* `r format(round(MS_R), scientific = FALSE)`
* `r format(round(SStot / df_tot), scientific = FALSE)`
* `r round(SSr / SSe)`
* `r format(round(F_obs), scientific = FALSE)`
* `r format(round(MS_R / (SSe / df_tot)), scientific = FALSE)`
* `r format(round(MS_R / (SSe / n)), scientific = FALSE)`
* *body mass alone significantly explains anaerobic power*
* *both body mass and jump height significantly explain anaerobic power*
* *the model does not contribute to explaining anaerobic power*

Solution
========

The regression model has two predictors: body mass and jump height. Therefore,

$$
\nu_\text{R} = p = `r df_R`,
$$

$$
\nu_\text{E} = n-p-1 = `r n` - `r p` - 1 = `r df_E`,
$$

and

$$
\nu_\text{tot} = n-1 = `r df_tot`.
$$

The residual sum of squares is

$$
SS_\text{E} = SS_\text{tot} - SS_\text{R} = `r round(SStot)` - `r round(SSr)`
= `r round(SSe)`.
$$

The regression and residual mean squares are

$$
MS_\text{R} = \frac{SS_\text{R}}{\nu_\text{R}} =
\frac{`r round(SSr)`}{`r df_R`} = `r round(MS_R)`,
$$

and

$$
MS_\text{E} = \frac{SS_\text{E}}{\nu_\text{E}} =
\frac{`r round(SSe)`}{`r df_E`} = `r round(MS_E)`.
$$

The observed F-ratio is

$$
F = \frac{MS_\text{R}}{MS_\text{E}} = \frac{`r round(MS_R)`}{`r round(MS_E)`}
= `r round(F_obs)`.
$$

Because the F-ratio is very large, the model explains a substantial proportion of the variability in anaerobic power. The conclusion is therefore that anaerobic power is significantly explained by body mass and jump height.

Meta-information
================

exname: anova_multiple_regression
extype: cloze
exsolution: 10000|01000|00010|0100|0010|1000|0100|010
exclozetype: schoice|schoice|schoice|schoice|schoice|schoice|schoice|schoice