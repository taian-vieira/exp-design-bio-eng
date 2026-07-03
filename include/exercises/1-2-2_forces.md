Question
========

*Different force-plate manufacturers exist, and their systems typically provide direct access to the measured forces and moments.*

*Supposing the force plate you are using provides the three ($x,y,z$) components of each of the four force vectors shown in @fig-1-2-3, how would you compute the body weight ($W_{\text{b}}$) from these quantities?*

Answerlist
----------
* *by summing the magnitudes of the four force vectors*
* *by summing the four vertical force components and taking the magnitude of the result*
* *not possible to compute because the body mass is not known*

Solution
========

During quiet standing, the body is approximately in static equilibrium. Therefore, the sum of all external forces acting in the vertical direction must be equal to zero.

Let

$$
f_{z_i}, \, i=1,2,3,4
$$

be the vertical components of the four ground reaction forces measured by the force plate.

The only external forces acting in the vertical direction are:

- the body weight ($W_{\text{b}}$), acting downward;
- the vertical components of the ground reaction forces, acting upward.

Consequently,

$$
W_{\text{b}} + f_{z_1} + f_{z_2} + f_{z_3} + f_{z_4} = 0
$$

and therefore

$$
W_{\text{b}} =
|-(f_{z_1}+f_{z_2}+f_{z_3}+f_{z_4})|
$$

Thus, body weight can be computed from the sum of the vertical components of the ground reaction forces.

Meta-information
================
exname: body_weight
extype: schoice
exsolution: 010
exshuffle: 3