## Question 1

takeOneTest <- function(probsGood = 0.5) {
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
takeOneTest(probsGood = 0.6)

