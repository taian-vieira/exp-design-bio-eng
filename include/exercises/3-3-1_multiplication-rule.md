Question
========

*What about the data in @tbl-3-3-1? Can we say that receiving either treatment, A or B, would affect the probability of being classified as Mild, Moderate, or Severe?* ##ANSWER1##

*What is the probability of having a severe disease and having received Treatment A $P(\text{Severe}\cap \text{Treat. A}$?* ##ANSWER2##

*What is the probability of having a Severe disease $P(\text{Severe})$* ##ANSWER3##

*What is the probability of having a Severe disease given Treatment A has been received $P(\text{Severe}|\text{Treat. A})$* ##ANSWER4##

Answerlist
----------
* yes
* no
* *`r round(700/30,1)`%*
* *`r round(700/60,1)`%*
* *`r round(1600/60,1)`%*
* *`r round(700/30,1)`%*
* *`r round(700/60,1)`%*
* *`r round(1600/60,1)`%*
* *`r round(700/30,1)`%*
* *`r round(700/60,1)`%*
* *`r round(1600/60,1)`%*

Solution
========

Yes, outcomes in @tbl-3-3-1 are dependent. Knowing which treatment has been delivered affects how likely the patient is to be classified as Mild, Moderate, or Severe. This is justified by $P(Severe|Treat. A) \ne P(Severe)$ as shown below.

$P(Severe\cap Treat. A)= \frac{700}{6000}=`r round(700/60,1)`%$

$P(Severe)= \frac{1600}{6000}=`r round(1600/60,1)`%$

$P(Severe|Treat. A)= \frac{700}{3000}=`r round(700/30,1)`%$

Meta-information
================
exname: multiplication_rule
extype: cloze
exsolution: 10|010|001|100
exclozetype: schoice|schoice|schoice|schoice