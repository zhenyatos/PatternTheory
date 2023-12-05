function samples = binomial(n, p, shape)
    bern = bernoulli(p, [n shape]);
    samples = sum(bern);
end