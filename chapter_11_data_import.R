library(tidyverse)

#the use of skip in read_csv is to skip the first n lines. Nothing to do with rows.
#munge I think must be the converting of data in columns to its respective data type

#Exercise 11.2
#1. 
read_delim(file = x, delim = "|")


#2
#read_csv & read_tsv look like according to the help to have all the same functions
#the answer book wrote this code to get the answer which I though was cool
union(names(formals(read_csv)), names(formals(read_tsv)))

#3 read_fwf is likely difficult to work with because you need to know the width of the columns?
#So the most important argument would be the width? col_positions
read_fwf(file, col_positions = )

#4 Let have a go at making a dataframe, apparently out of date question
#I looked into it to much/ The "" was actually just the text and not part of the text
# hence leaving x,y\n 1,'a,b' to be imported, not the ""
x <- read_csv("x,y\n 1,'a,b'", quote = "'")
x

#5 identify the issues
read_csv("a,b\n1,2,3\n4,5,6") #not enough columns in the heading.
read_csv("a,b,c\n1,2\n1,2,3,4") #missing data from column C row 1
read_csv("a,b\n\"1") #missing data from column b
read_csv("a,b\n1,2\na,b") #mixing characters and integers
read_csv("a;b\n1;3") #need to define the delimiter differently. This has turn into a 1 row.

#Parsing Vectors
#1 important to locale
locale(date_format = ) #I would guess format of the date would be pretty important. along with date names and date time

#2


