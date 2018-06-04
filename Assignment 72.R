# 1. Write a program to create barplots for all the categorical columns in mtcars.

par(mfrow=c(3,2))

for(i in 1:ncol(mtcars)) {
  if(length(unique(mtcars[,i]))/length(mtcars[,i]) <= 0.2){
  barplot(table(mtcars[,i]),xlab = colnames(mtcars)[i])
  }
}

par(mfrow=c(1,1))

# 2. Create a scatterplot matrix by gear types in mtcars dataset
library(car)

scatterplotMatrix(~mpg+cyl+disp+hp+drat+wt+qsec+vs+am+carb|gear, data = mtcars,legend = TRUE, diagonal = TRUE)


# 3. Write a program to create a plot density by class variable.
mtcars1 <- mtcars
mtcars1$gear <- as.factor(mtcars1$gear)
ggplot(mtcars1, aes(mpg, col=gear, fill=gear)) + 
  geom_density(alpha=.5) 
