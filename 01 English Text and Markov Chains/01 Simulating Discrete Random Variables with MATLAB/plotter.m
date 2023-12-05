N = 10000;
n = 10;
p = 0.4;
geom_p = 0.5;
lambda = 2;

samples = binomial(n, p, [N, 1]);
pmf = binopdf(0:n, n, p);

figure(1)
hold on;
histogram(samples, "Normalization", "probability", "FaceColor", "#4DBEEE")
bar(0:n, pmf, "FaceColor", "#0072BD")
legend("Estimation", "True PMF")
grid on
hold off;

samples = poisson(lambda, [N, 1]);
pmf = poisspdf(0:10, lambda);

figure(2)
hold on;
histogram(samples, "Normalization", "probability", "FaceColor", "#4DBEEE")
bar(0:n, pmf, "FaceColor", "#0072BD")
legend("Estimation", "True PMF")
grid on
hold off;

samples = geometric(geom_p, [N, 1]);
% we have to shift the values, since MATLAB uses a different convention for
% geometric distribution
pmf = geopdf(0:max(samples)-1, geom_p);

figure(3)
hold on;
histogram(samples, "Normalization", "probability", "FaceColor", "#4DBEEE")
bar(1:max(samples), pmf, "FaceColor", "#0072BD")
legend("Estimation", "True PMF")
grid on
hold off;