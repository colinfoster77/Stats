// This Stan program sets up a simple model.


// The input data is a vector 'y' of length 'N'.
data {
  int<lower=0> n;
  vector[n] y;
}

// The model accepts two parameters, 'mu' and 'sigma'.
parameters {
  real mu;
  real<lower=0> sigma;
}

// The model that we're going to estimate has the output
// 'y' as normally distributed with mean 'mu' and standard deviation 'sigma'.
model {
  y ~ normal(mu, sigma);
  mu ~ normal(170,20);
  sigma ~ cauchy(6,50);
}

