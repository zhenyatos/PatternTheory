function samples = bernoulli(p, shape)
    assert(p >= 0 && p <= 1, "p must be between 0 and 1")
    if p == 0
        samples = zeros(shape);
    else
        samples = zeros(shape);
        samples(rand(shape) <= p) = 1;
    end
end