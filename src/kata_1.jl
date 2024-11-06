using Distributions
using Plots

# posterior = (prior * likelihood) / normalizing_constant
# p(bias | data) = (p(bias) * L(bias | data)) / p(data)

function calculate_posterior(heads, tails)
    # Prior distribution: Uniform distribution (Beta(1, 1))
    prior = Beta(1, 1)

    # Posterior distribution: Beta distribution
    # we don't need to explicitly do anything with the likelihood here
    # it's implicit in updating the prior with the actual data
    posterior = Beta(prior.α + heads, prior.β + tails)

    return posterior
end

d = calculate_posterior(7, 3)

mean(d)
#this works because the beta distribution is the conjugate prior for the binomial distribution.
#when we use the beta distribution as a prior for a binomial distribution, the posterior will also be a beta distribution
#beta is helpful here because we can think about the α and β parameters as Beta(α = num_success, β = num_failure)
#so to get our posterior, we can just specify an updated Beta that incorporates the previous info from the prior


#fiddling with answering this with a binomial distribution
x = 0:0.01:1
y = 7
p = ones(length(x)) / length(x)

zz = [pdf(Binomial(10, i), y) for i in x]

pp = p .* zz

rr = pp ./ sum(pp)

plot(x, rr, xlabel="Probability of Heads", ylabel="Posterior Probability")
plot(pdf(d, x))