## Question 1

takeOneTest <- function(probsGood = 0.6) {
  my_score <- 0
  my_mood <- sample(c("Good", "Bad"),
                    size = 1, 
                    prob = c(probsGood, 1-probsGood) ) 
  if (my_mood == "Good") {
    my_score <- sample(c(100, 75),
                       size =1,
                       prob = c(0.8, 0.2))
  } else {
    
  }
  if (my_mood == "Bad") {
    my_score <- sample(c(100, 75, 50),
                       size = 1,
                       prob = c(0.2, 0.3, 0.5))
  }
  print(my_score)
}
takeOneTest()

############################################################
## Question 2

SemesterGrades <- function(num_tests) {
  for (i in 1:num_tests) {
    takeOneTest()
  }
}
SemesterGrades2(5)

############################################################
## Question 3




