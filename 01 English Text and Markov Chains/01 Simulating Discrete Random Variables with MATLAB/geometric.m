function samples = geometric(p, shape)
    samples = zeros(shape) - 1;
    uniform = rand(shape);
    geom_distr = p;
    accumulator = geom_distr;
    iter = 1;
    while min(samples, [], "all") < 0
        mask = (uniform <= accumulator) & (samples == -1);
        samples(mask) = iter;
        iter = iter + 1;
        geom_distr = geom_distr * (1-p);
        accumulator = accumulator + geom_distr;
    end
end