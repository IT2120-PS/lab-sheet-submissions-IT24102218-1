getwd()
setwd("C:\\Users\\User\\Desktop\\IT24102218")

## (1)
punif(15, min = 0, max = 40, lower.tail = TRUE)

## (2)
pexp(2, rate = 0.33, lower.tail = TRUE)

## (3)
# (i)
1 - pnorm(130, mean = 100, sd = 15, lower.tail = TRUE)

# (ii)
qnorm(0.95, mean=100, sd=15)