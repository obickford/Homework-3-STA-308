#####################
##  
##  Olivia Bickford
##  April 10, 2022
##  Homework #3
##
##    Working more with practice on functions and applying them to probability
##    and applications related to basic statistics such as...
##    weighted probability, random sampling, 5 statistic summary,
##    histograms, describing graphs, simulations
##
##    Used functions to step through a probability scenario of having a good or bad mood
##    and depending on the mood determining the probability of what test grade you
##    would randomly receive on a random day
##
##    Later combined the functions to determine averages and how many tests you would want
##    to take by comparing the stats of the random sampling and histograms
##
##    Also worked on using functions - ifelse(), sample(), for()
##    and used new technique with for() loop
##    by saving results into a new vector and including the vector within the function
##    Added parameters in the function to allow the user to specify what they want
##      In this example we used num_tests for the user to put in the
##      the number of tests they wanted
##
########################
## Question 1

takeOneTest <- function(probsGood = 0.6) {
  my_mood <- sample(c("Good", "Bad"),  ##sampling for the good and bad day probs
                    size = 1, 
                    prob = c(probsGood, 1-probsGood) ) 
  
  if (my_mood == "Good") {
    my_score <- sample(c(100, 75), ## if the prob is good sample these conditions
                       size =1,
                       prob = c(0.8, 0.2))
  } else {
    my_score <- sample(c(100, 75, 50), ## else (if its bad) sample these conditions
                         size = 1,
                         prob = c(0.2, 0.3, 0.5))
  }
  my_score
}


takeOneTest()

############################################################
## Question 2

SemesterGrades <- function(num_tests) {  
  my_sem_grades <- c()
  
  for (i in 1:num_tests) {  ##had to set parameters to num_tests so the user can specify the number
   my_sem_grades <- c(my_sem_grades,
                      takeOneTest()) ##uses the function from question 1 to have the same samples
  }
  my_sem_grades
}
SemesterGrades(6)

############################################################
## Question 3

avg_test <- function(num_tests=1) {
  my_test <- c()
  for(i in 1:num_tests) {  
    my_test <- c(my_test,
                 SemesterGrades(num_tests)) ##using a function with the SemesterGrade to specify num_tests
  }
  mean(my_test) ##takes mean of the for() loop
}

avg_test(num_tests = 6)
## Means ranged from 79.16667 to 85.41667 and 81.25 and 84.72222 when sampled for 6


##Average for 3 tests using the basis of avg_test

myAvgTest3 <- c()
for(i in 1:10000) {
  myAvgTest3 <- c(myAvgTest3,
                    avg_test(num_tests = 3))
}
summary(myAvgTest3)
hist(myAvgTest3)
sd(myAvgTest3)


## Average for 12 tests using the basis of avg_test

myAvgTest12 <- c()
for(i in 1:10000) {
  myAvgTest12 <- c(myAvgTest12,
                  avg_test(num_tests = 12))
}
summary(myAvgTest12)
hist(myAvgTest12)
sd(myAvgTest12)

