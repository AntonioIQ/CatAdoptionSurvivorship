data{
int N;
array[N] int adopted;
vector[N] days_to_event;
array[N] int color_id;
}

parameters{
vector[2] alpha;
}

transformed parameters{
vector<lower=0>[N] lambda;
vector<lower=0>[N] mu;
  for ( i in 1:N ) {
    mu[i] = exp(alpha[color_id[i]]);// alpha debe depender de otros parátemtros
    lambda[i] = 1/mu[i];
  }
}

model{
  
  alpha ~ normal(0, 3);
  
  for (i in 1:N)
    if (adopted[i] == 0) target += exponential_lccdf(days_to_event[i] | lambda[i]); 
  
  for (i in 1:N)
    if (adopted[i] == 1) days_to_event[i] ~ exponential(lambda[i]);

}

generated quantities{
vector[N] pred;
  for (i in 1:N) 
    if (adopted[i] == 1) pred[i] = exponential_rng(lambda[i]);
  for (i in 1:N) 
    if (adopted[i] == 0) pred[i] = exponential_lccdf(days_to_event[i] | lambda[i]); // Revisar, hacer simulaciones y ver cual es mejor
}

