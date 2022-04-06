library(tidyverse)

good_day <- c(100, 75)
good_day_prob <- c(0.8, 0.2)

bad_day <- c(100, 75, 50)
bad_day_prob <- c(0.2, 0.3, 0.5)

##Write a function to generate your grade on a random quiz/exam day - name this function takeOneTest()

#Comments: this function may or may not have any parameters.
#when you run this function, it will output one random test score (a 50, 80, or 100).
#there are multiple ways for this function, consider using the runif() or sample() functions for the random components and if-else structures. 


takeOneTest <- function() {
  sample(c(100, 75, 100, 75, 50), 1, replace = TRUE, prob = c(0.8, 0.2, 0.2, 0.3, 0.5))
  if(0 < x < 0.4) {
    select = bad_day & bad_day_prob  
  else (0.4 < x < 1)
    select = good_day & good_day_prob
    }
}
takeOneTest()

## try to distinguish between the good and the bad days, kept getting a comparison error?
takeOneTest <- function() {
  sample(c(100, 75, 100, 75, 50), 1, replace = TRUE, prob = c(0.8, 0.2, 0.2, 0.3, 0.5)) 
  if(x < 0.4) {
    select = bad_day
  }
  else {(x > 0.4)
    select= good_day
  }
}
takeOneTest()

##One below does not distinguish between the good and bad days i think
takeOneTesttrail <- function() {
  sample(c(100, 75, 100, 75, 50), 1, replace = TRUE, prob = c(0.8, 0.2, 0.2, 0.3, 0.5))
}
takeOneTesttrail()




good_or_bad_mood <- function(probsGood = 0.5) {
  my_mood <- sample(c("Good", "Bad"),
         size = 1, 
         prob = c(probsGood, 1-probsGood) ) 
  if (my_mood == "Good") {
    my_score <- sample(c(100, 75),
           size =1,
           prob = c(0.8, 0.2))
  } else {
    my_score <- sample(c(100, 75, 50),
           size = 1,
           prob = c(0.2, 0.3, 0.5))
  }
  my_score
}
good_or_bad_mood(probsGood = 0.6)


#good_or_bad_mood2 <- function(probsGood = 0.6) {
  #sample(c("Good", "Bad"),
  #       size = 1, 
  #       prob = c(probsGood, 1-probsGood) ) 
#}

