Question
========

##### Exercise: Margin of error for $\text{HR}_{\max}$ prediction

\

*Figure @fig-3-7-1 shows the maximal heart rate ($\text{HR}_{\max}$) measured in a sample of $n=20$ individuals.*

*Assuming that $Y \sim \mathcal{N}(\mu,\sigma^2)$ and given:*

$$
\begin{aligned}
n &= 20 \\
\overline{y} &= `r round(mean(y),1)` \text{ bpm} \\
s &= `r round(sd(y),1)` \text{ bpm}
\end{aligned}
$$

*Compute the 95% prediction interval for the next individual's maximal heart rate. Enter the lower and upper limits (in bpm) rounded to one decimal place.*

:::: {.columns}
::: {.column width=50%}
Lower limit: ##ANSWER1##
:::
::: {.column width=50%}
Upper limit: ##ANSWER2##
:::
::::

Solution
========

The prediction interval is

$$
\bar y \pm t_{19,0.975}\,s\sqrt{1+\frac{1}{20}}.
$$

Using

$$
t_{19,0.975}=2.093,
$$

gives

$$
174.5 \pm 2.093 \times 12.3 \times \sqrt{1.05}.
$$

The resulting 95% prediction interval is

$$
(`r predi[1]`,\;`r predi[2]`)\text{ bpm}.
$$

Meta-information
================

extype: cloze
exclozetype: num|num
exsolution: 144.4|198.4
extol: 0.2|0.2
exname: Prediction interval for maximal heart rate
