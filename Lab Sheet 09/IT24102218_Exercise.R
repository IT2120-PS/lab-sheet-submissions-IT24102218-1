setwd("C:\\Users\\User\\Desktop\\IT24102218")

## (01)
# (i)
baking_times <- rnorm(25, mean = 45, sd = 2)
baking_times
# (ii)
t.test(baking_times, mu = 46, alternative = "less")
