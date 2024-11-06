using Turing
using Plots
using Distributions
using Random
using StatsPlots

## simulate data -----------

Random.seed!(0408)

β = [0.5, 1, 2, 2.5]
n = 10_000
m = length(β)

X = hcat(ones(n), rand(Float64, (n, m - 1)))
ϵ = rand(Normal(0.2), n)

y = X * β .+ ϵ

# Define Model ------------

@model function linreg(X, y)
    #housekeeping
    feats = size(X, 2)

    #priors
    σ ~ Exponential(1)
    β ~ filldist(Normal(0, 3), feats)

    #likelihood
    for i ∈ eachindex(y)
        y[i] ~ Normal(X[i, :]' * β, σ)
    end
end

# Sample the posterior --------

model = linreg(X, y)

chn = sample(model, NUTS(), MCMCThreads(), 1_000, 2)

# plot the posteriors for the coefficients ----------

plot(chn)