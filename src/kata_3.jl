using Distributions
using Random

Random.seed!(0408)

function calculate_posterior(success, fail)
    #this is a uniform prior
    prior = Beta(1, 1)

    posterior = Beta(success + prior.α, fail + prior.β)

    return posterior
end

#estimate posteriors for each circumstance
d_control = calculate_posterior(50, 50)
d_treatment = calculate_posterior(60, 40)

#sample from the posteriors
drug_sample = rand(d_treatment, 10_000)
control_sample = rand(d_control, 10_000)
diff = drug_sample .- control_sample

#estimate quantiles from the differences -- this gives us an estimate of the effectiveness of the drug compared to the control
q_diff = quantile(diff, [0.005, 0.025, 0.975, 0.995])
