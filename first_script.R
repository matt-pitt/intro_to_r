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
var <- mpg
#few ways to get them
var$manufacturer
var[["manufacturer"]]
var[[1]]
#just copied from earlier in the text

 