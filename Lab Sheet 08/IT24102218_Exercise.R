getwd()
setwd("C:\\Users\\User\\Desktop\\IT24102218")

data <- read.table("Exercise - LaptopsWeights.txt", header = TRUE)
fix(data)
attach(data)

## (01)
popmn <- mean(Weight.kg.)
popmn

popsd <- sd(Weight.kg.)
popsd

## (02)
samples <- c()
n <- c()

for(i in 1:25) {
  s <- sample(Weight.kg., 6, replace = TRUE)
  samples <- cbind(samples, s)
  n <- c(n, paste('s', i))
}
samples

colnames(samples) = n

s.means <- apply(samples, 2, mean)
s.means

s.sds <- apply(samples, 2, sd)
s.sds

## (03)
samplemean <- mean(s.means)
samplemean

popmn
samplemean

samplesd <- sd(s.means)
samplesd

popsd
samplesd
