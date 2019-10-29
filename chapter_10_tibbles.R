library(tidyverse)

#chapter 10

create_tibble <- as_tibble(iris)

#extract variables by position (10.3.2 - Subsetting)
#all achieves the same result
create_tibble$Sepal.Length
create_tibble[["Sepal.Length"]]
create_tibble[[1]]

#10.5 Exercises
#QUESTION 1
print(mtcars) #data.frames print the whole dataframe, they dont define the type the variable is either. It s simple print
print(as_tibble(iris)) #tibble shows dimensions 150 * 5, also shows the types of data as well. e.g. dbl or fct. Also only prints first 10
#observations

#QUESTION 2 - Why would the below cause frustration?
df <- data.frame(abc = 1, xyz = "a")
df$x
df[, "xyz"]
df[, c("abc", "xyz")]
# Personally I have found it frustrating to have to know where to place the commas to extract the variables I am searching for

#QUESTION 3 - extracting a variable
var <- as_tibble(mpg)
#few ways to get them
var$manufacturer
var[["manufacturer"]]
var[[1]]
#just copied from earlier in the text


#QUESTION 4.1
#extract variable called 1
annoying <- tibble(
  `1` = 1:10,
  `2` = `1` * 2 + rnorm(length(`1`))
)

annoying[['1']]

#4.2 plotting scatterplot of 1 vs 2, Does this mean variable 1 & 2. If it does then here ya go!
ggplot(annoying, aes(x = `1`, y = `2`)) +
  geom_point()

#4.3 - Few options to get this done. Remember the referromg to variables in tibble is different from dataframe.
annoying <- mutate(annoying, `3` = `2` / `1`)
annoying[["3"]] <- annoying$`2` / annoying$`1`
annoying[["3"]] <- annoying[["2"]] / annoying[["1"]]

#4.4 - Rename the columns

annoying <- rename(annoying, "one" = `1`, "two" = `2` , "three" = `3`)
print(annoying)

#4.5 - What does tibble::enframe() do?
tibble::enframe(c(matt = 1, daan = 2, xan = 3, maya = 4))

#it seems to convert inputs to a tibble? Converts named vectors into a tibble
#refer to print.tbl thanks to the solutions guy! https://jrnold.github.io/r4ds-exercise-solutions/tibbles.html

?print.tbl
print(annoying, n = 3) #prints first three observations





 