## Question 1

takeOneTest <- function(probsGood = 0.6) {
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


takeOneTest()

############################################################
## Question 2

SemesterGrades <- function(num_tests) {
  my_sem_grades <- c()
  
  for (i in 1:num_tests) {
   my_sem_grades <- c(my_sem_grades,
                      takeOneTest())
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
                 SemesterGrades(num_tests))
  }
  mean(my_test)
}

avg_test(num_tests = 6)

## Means ranged from 79.16667 to 85.41667 and 81.25 and 84.72222
######################################################
set.seed(1)
myAvgTest3 <- c()
for(i in 1:10000) {
  myAvgTest3 <- c(myAvgTest3,
                    avg_test(num_tests = 3))
}
summary(myAvgTest3)
##lower minimum score, lower median and mean, higher max score but more wider standard deviation
hist(myAvgTest3)
## left skewed, wider range/spread
sd(myAvgTest3)
## sd= 6.586646

########################################################

myAvgTest12 <- c()
for(i in 1:10000) {
  myAvgTest12 <- c(myAvgTest12,
                  avg_test(num_tests = 12))
}
summary(myAvgTest12)
##higher min value and overall mean and median score, but lower max value, 
##  standard deviation is a lot lower as well
hist(myAvgTest12)
## more unimodal and bell shaped
sd(myAvgTest12)
## sd= 1.656258

