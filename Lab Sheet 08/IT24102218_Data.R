getwd()
setwd("C:\\Users\\User\\Desktop\\IT24102218")

data <- read.table("Data - lab 8.txt", header = TRUE)
fix(data)
attach(data)

## Q1
popmn <- mean(Nicotine)
popmn

popvar <- var(Nicotine)
popvar

## Q2
samples <- c()
n <- c()

for(i in 1:30) {
  s <- sample(Nicotine, 5, replace = TRUE)
  samples <- cbind(samples, s)
  n <- c(n, paste('s', i))
}

colnames(samples) = n

s.means <- apply(samples, 2, mean)

s.vars <- apply(samples, 2, var)

## Q3
samplemean <- mean(s.means)

samplevars <- var(s.means)

## Q4
popmn
samplemean

## Q5
truevar = popvar / 5
samplevars

# Table 1: Samples 1–15
table1 <- data.frame(
  Sample = 1:15,
  Mean = round(s.means[1:15], 3),
  Variance = round(s.vars[1:15], 3)
)

print(table1, row.names = FALSE)

# Table 2: Samples 16–30
table2 <- data.frame(
  Sample = 16:30,
  Mean = round(s.means[16:30], 3),
  Variance = round(s.vars[16:30], 3)
)

print(table2, row.names = FALSE)

# Summary table
summary_table <- data.frame(
  Metric = c("Population Mean", "Population Variance",
             "Mean of Sample Means", "Variance of Sample Means"),
  Value = c(round(popmn, 3), round(popvar, 3),
            round(samplemean, 3), round(samplevars, 3))
)

print(summary_table, row.names = FALSE)

