# Quiz 2
**1. Dates in R is represented by.....**  
Answer: Date class  
<br>
**2. What is the header part of the .Rmd file created by slidify called?**  
Answer: YAML  
<br>
**3. What would you expect the distribution of rnorm(1000) be?**  
Answer: A random normal distribution with mean around zero  
<br>
**4. Which of the following apply() function is most suitable to execute a function over a list and simplify its result?**  
Answer: sapply()  
<br>
**5. What should be inside the parenthesis (...) of a function?**  
Answer: Function arguments  
<br>
**6. Which of the following apply() function is most suitable to apply over margins of an array?**  
Answer: apply()  
<br>
**7. What is an anonymous function?**  
Answer: A function named "function" which is an argument within a function  
<br>
**8. The following are debugging tools that can be used in an R function EXCEPT**  
Answer: stop()  
<br>
**9. How many values can a function returns?**  
Answer: One  
<br>
**10. Consider the following R function.**  
```{r}
h <- function(x, y = NULL, d = 3L) {
     z <- cbind(x, d)
     if(!is.null(y))
           z <- z + y
     else
           z <- z + f
     g <- x + y / z
     if(d == 3L)
           return(g)
     g <- g + 10
     g
}
```
**Which symbol in the above function is a free variable?**  
Answer: f  
<br>
**11. The R language uses what type of scoping rule to resolve free variables?**  
*Lexicon scoping, Dynamic scoping, Global scoping*  
Answer: None of the answers are true  
<br>
**12. What is the slidify function used for?**  
Answer: Transform the Rmd file into index.html file  
<br>
**13. Partial argument matching means.....**  
Answer: Named argument that is partially matched  
<br>
**14. How do you return a value from a function?**  
Answer: the value of the last instruction executed by the function  
<br>
**15. Which debugging tool should be used if you want to review a condition that leads to an error and change the condition so that the error can be contained?**  
Answer: recover()  
<br>
**16. How to create a slide presentation in slidify?**  
Answer: Use the author() function to create a deck  
<br>
**17. Suppose the following function is defined in R:**  
```{r}
cubet <- function (x, n) {
   x^5
}
```
**What is the result of running cubet(,3)?**  
Answer: An error is returned because “x” is not specified in the call to cubet()  
<br>
**18. Which of the following apply() function is most suitable to apply over subsets of a vector using index as a factor?**  
Answer: tapply()  
<br>
**19. POSIXlt is used for.....**  
Answer: Manipulating elements of date/time such as day, week, hour, months and year  
<br>
**20. What is the "..." argument in an R function means?**  
Answer: Variable number of arguments meant to be used by another function  
<br>
**21. What is an environment in R?**  
Answer: a collection of symbols/value pairs  
<br>
**22. Which of the following statement is not true about a function?**  
Answer: All functions must have arguments  
<br>
**23. strptime() can be used to convert date character string into date/time of class.....**  
Answer:  POSIXlt  
<br>
**24. What is a “free” variable?**  
Answer: A variable used in a function but neither local nor an argument of the function  
<br>
**25. What will be the class of a subtraction between two dates of the same class?**  
Answer: difftime  
<br>
**26. Consider the following R codes:**  
```{r}
e<-5;g<-7
f <- function(a, b = 2, c = 3, d = 4,...) {
  a
  b
  c
  d
  e
  f
}
```
**Which variable in the above illustrates lexical scoping?**  
Answer: e  
<br>
**27. When binding values to symbols, what is the first element in the search list?**  
Answer: User work spaces  
<br>
**28. Consider the following function:**  
```{r}
h <- function(x, y = NULL, d = 3L) {
     z <- cbind(x, d)
     if(!is.null(y))
           z <- z + y
     else
           z <- z + f
     g <- x + y / z
     if(d == 3L)
           return(g)
     g <- g + 10
     g
}
```
**What is the value of z if x<-y<-1 before exiting the function?**  
Answer: 2 and 4  
<br>
**29. What is a presentation called in slidify?**  
Answer: Deck  
