# Template for R Language (Fundamental)


# Assign "Hello" to variable a
a <- "Hello" # Can Be Write in this form: "Hello" -> a

# Print Variable a
a # Can Be Write in this form: print(a)

# Operation in R
b <- 10 # Assign 10 to variable b
c <- 2 # Assign 2 to variable c
b+c # addition
b-c # subtraction
b*c # multiplication
b/c # division

# check which class an object belongs to
class(a) # Character
class(b) # Numeric, c also the numeric

# Define the Integer
d <- 10L
class(d) # Integer

# Define the NaN
class(NaN) # numeric

# How to use c() function
e1 <- c(0.5, 0.6) #numeric
e2 <- c(TRUE, FALSE) #logical
e3 <- c(T, F) #logical
e4 <- c("a", "b", "c") #character
e5 <- 9:29 #integer
e6 <- c(1+0i, 2+4i) #complex

# How to use vector function
f <- vector("numeric",length = 10)
f # print variable f

# Creating Vector
g1 <- c("a", "b", "c")
g2 <- c("a", 1, 2)
g3 <- c(TRUE,FALSE)
g4 <- 1:10
length(g1) #get the length in variable g1

# coercion occurs
h1<- c(1.7, "a") #character
h2<- c(TRUE, 2) #numeric
h3<- c("a", TRUE) #character

# explicit coercion
# use as.* function
i <- 0:6
class(i) #"Integer"
as.numeric(i) 
class(as.numeric(i)) #Numeric
as.logical(i)
class(as.logical(i)) #Logical
as.character(i) 
class(as.character(i)) #Character

#Nonsensical coercion results in NAs.
j<- c("a", "b", "c")
as.numeric(j) #Warning message: #NAs introduced by coercion
as.logical(j)
as.complex(i)

#Subsetting Vector (Subset a vector by specifying the index)
g1[1]
g4[8]
g1[1:2]
g1[-2]
g4[2:5]

#List
k <- list(3, "c")
l <- list(1, "a", TRUE, 1 + 4i)
m <- list(var1 = 1:4, var2 = 0.6)
# subsetting the list
k[[1]]
k[[2]]
m$var1

# Matrices
n <- matrix(1:6, nrow=2, ncol=3) # can be write in this form: n<-matrix(1:6,2,3)
n #print n (for view only)

#Subsetting Matrices
n[1,2]
n[2,1]
n[1, ]


