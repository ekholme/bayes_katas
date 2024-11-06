p_a_b = 0.8 #probability of predicting rain given it actually rains
p_a = 0.7 #probability of predicting rain, i.e. forecast for rain
p_b = 0.25 #prior probability of rain

#solving with Bayes' Theorem
#note that p(a|b) is equivalent to l(b|a)
p_b_a = ((p_b) * p_a_b) / p_a