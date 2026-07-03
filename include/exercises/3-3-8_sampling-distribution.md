Question
========

*A sports medicine researcher studies resting heart rate in a population of elite endurance athletes. In this population, resting heart rate is known to have mean $\mu = 52$ beats per minute (bpm) and standard deviation $\sigma = 8$ bpm.*

*A sample of $n=25$ athletes is recruited.*

*Assume the sample mean $\overline{X}$ is approximately Normally distributed.*

1. *What is the mean of the sampling distribution of $\overline{X}$?* ##ANSWER1##
2. *What is the standard error of the mean? ##ANSWER2##*
3. *What is the probability that the sample mean resting heart rate is **greater than 55 bpm**?* ##ANSWER3##
4. *What is the probability that the sample mean resting heart rate is **between 50 and 54 bpm**?* ##ANSWER4##


Answerlist
----------


Solution
========

Let $\overline{X}$ denote the sample mean resting heart rate.

Because the sample size is sufficiently large, the sampling distribution of the mean can be approximated as Normal:

$$
\overline{X} \sim N\left(\mu, \frac{\sigma}{\sqrt{n}}\right)
$$

**1. Mean of the sampling distribution**

The mean of the sampling distribution equals the population mean:

$$
\mu_{\overline{X}} = \mu = 52 \text{ bpm}
$$

**2. Standard error of the mean**

The standard error is:

$$
\sigma_{\overline{X}} = \frac{\sigma}{\sqrt{n}} = \frac{8}{\sqrt{25}} = \frac{8}{5} = 1.6 \text{ bpm}
$$

Thus:

$$
\overline{X} \sim N(52, 1.6)
$$

**3. Probability that the sample mean is greater than 55 bpm**

We want to compute:

$$
P(\overline{X} > 55)
$$

First, convert $\overline{X}=55$ into a $z$-score:

$$
z = \frac{55 - 52}{1.6} = 1.875
$$

Thus:

$$
P(\overline{X} > 55) = P(Z > 1.875)
$$

Using the Standard Normal distribution:

$$
P(Z < 1.875) \approx 0.970
$$

Therefore:

$$
P(\overline{X} > 55) = 1 - 0.970 = 0.030
$$

So, the probability that the sample mean resting heart rate exceeds 55 bpm is approximately:

$$
0.03 \quad \text{or} \quad 3.0\%
$$

**4. Probability that the sample mean is between 50 and 54 bpm**

We want to compute:

$$
P(50 < \overline{X} < 54)
$$

Convert both values to $z$-scores:

$$
z_1 = \frac{50 - 52}{1.6} = -1.25
$$

$$
z_2 = \frac{54 - 52}{1.6} = 1.25
$$

Therefore:

$$
P(50 < \overline{X} < 54) = P(-1.25 < Z < 1.25)
$$

Using the Standard Normal distribution:

$$
P(Z < 1.25) \approx 0.894
$$

$$
P(Z < -1.25) \approx 0.106
$$

Thus:

$$
P(-1.25 < Z < 1.25) = 0.894 - 0.106 = 0.788
$$

So, the probability that the sample mean lies between 50 and 54 bpm is approximately:

$$
0.788 \quad \text{or} \quad 78.8\%
$$

Meta-information
================
exname: distributions
extype: cloze
exsolution: 0|0|0|0
exclozetype: num|num|num|num
extol: 0.01