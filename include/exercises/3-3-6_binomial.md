Question
========

*Supposing 10 patients have been vaccinated, what would be the probability that at least two were immune?* ##ANSWER1##

Answerlist
----------
* *`r round(sum(dbinom(8:10, size = 10, prob = 0.7)),5)`*
* *`r round(sum(dbinom(0:2, size = 10, prob = 0.7)),5)`*
* *`r round(1-sum(dbinom(0:1, size = 10, prob = 0.7)),5)`*
* *`r round(dbinom(2, size = 10, prob = 0.7),5)`*

Solution
========

Calculating the probability of at least 2 patients developing immunity directly would require summing the probabilities of 2, 3, 4, ..., up to 10 patients becoming immune.

It is much more efficient to use the complement rule:

$P(X \ge 2) = 1-P(X<2) = 1 - (P(X=0) + P(X=1))=`r 1-sum(dbinom(0:1, size = 10, prob = 0.7))`$

Meta-information
================
exname: binomial
extype: cloze
exsolution: 0010
exclozetype: schoice