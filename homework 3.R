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
SemesterGrades(3)

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

avg_test(num_tests = 12)

######################################################

myAvgTest3 <- c()
for(i in 1:10000) {
  myAvgTest3 <- c(myAvgTest3,
                    avg_test(num_tests = 3))
}
summary(myAvgTest3)
hist(myAvgTest3)

########################################################

myAvgTest12 <- c()
for(i in 1:10000) {
  myAvgTest12 <- c(myAvgTest12,
                  avg_test(num_tests = 12))
}
summary(myAvgTest12)
hist(myAvgTest12)


