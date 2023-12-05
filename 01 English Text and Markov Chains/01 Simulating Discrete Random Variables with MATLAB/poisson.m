function samples = poisson(lambda, shape)
    samples = zeros(shape) - 1;
    accumulator = ones(shape);
    iter = 0;
    while min(samples, [], "all") < 0
        X = rand(shape);
        accumulator = accumulator .* X;
        mask = (accumulator <= exp(-lambda)) & (samples == -1);
        samples(mask) = iter;
        iter = iter + 1;
    end
end