# in this project we are going to test the "Law of Large numbers using R"

#Law of Large numbers states that the average of the possible outcome(X), if the total no of attempts is said
#to be "n" becomes equal to the estimated value of outcomes, when "n" moves towards infinity. Refering 
#coin tosses here!

# Test the Law Of Large Numbers for N random normally distributed numbers with
# mean = 0, stdev = 1:
# Create an R script that will count how many of these numbers fall between -1 and 1
# and divide by the total quantity of N
# You know that E(X) = 68.2%
# Check that Mean(XN) -> E(X) as you rerun your script while increasing N.

#--------------------------------------------------------------------------------

#taking the value of  N = 100
N <- 100
counter <- 0
for(i in rnorm(N)){
  if(i > -1 & i < 1){
    counter = counter + 1
  }
}
counter/N
#compare to 68.2 % or 0.682

#taking the value of  N = 1000
N <- 1000
counter <- 0
for(i in rnorm(N)){
  if(i > -1 & i < 1){
    counter = counter + 1
  }
}
counter/N

#taking the value of  N = 100000

N <- 100000
counter <- 0
for(i in rnorm(N)){
  if(i > -1 & i < 1){
    counter = counter + 1
  }
}
counter/N # got the average to be 0.68344 which is quite close to our estimated mean i.e 0.682

#Hence this is the Law of large numbers.
