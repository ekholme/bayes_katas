# Bayes Katas

Small activities to practice with Bayesian stats. I'm mostly generating these sporadically using Google Gemini, so the formats will vary somewhat between katas.

## Katas

### Kata 1: Coin Flipping

**Problem**: You flip a coin 10 times and observe 7 heads. What is the probability that the coin is biased towards heads?

Bayesian Analysis:

**Prior**: Assume a uniform prior distribution for the probability of heads.
**Likelihood**: The likelihood of observing 7 heads given a certain probability of heads.
**Posterior**: Calculate the posterior distribution for the probability of heads.
**Exercise**: Write a function that takes the number of heads and tails as input and returns the posterior distribution for the probability of heads.

### Kata 2: Linear Regression

**Exercise**: Simulate data from a linear model, then use Bayesian linear regression to estimate the coefficients. Plot the posterior distributions of the coefficients


### Kata 3: Drug Efficacy

**Problem**: A new drug is being tested on a group of 100 patients. 60 patients who received the drug recovered, while 40 did not. A control group of 100 patients, who received a placebo, had 50 recover and 50 not recover.

**Model**: Use a Bernoulli distribution to model the probability of recovery for each group.

**Prior**: Assume a Beta(1,1) prior for both the drug and placebo recovery probabilities.

**Posterior**: Calculate the posterior distributions for the drug and placebo recovery probabilities using Bayesian inference.

### Kata 4: Weather Forecast

**Scenario**: A weather forecaster predicts a 70% chance of rain tomorrow. Historically, the forecaster's predictions have been accurate 80% of the time. Assume that the region has a 25% probability of rain.

**Question**: What is the probability that it will actually rain tomorrow?