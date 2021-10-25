#Roger H Hayden III
#9/6/2021
#Statistical Methods and Data Analysis
# Monte Carlo HW - Module 1

#Monte Carlo exercise: John has integers 1:10. He randomly draws 5 without replacement 
#and reasons that he could estimate the 80th percentile of his 10 integers, 
#the value 8, by taking the 2nd largest sampled value; that is the 4th value in order from smallest to largest. 
#(a) Applying this approach repetitively, what proportion of the time will he accurately estimate the value 8? 
#(b) Underestimate? 
#(c) Overestimate?

#Here is A

integers<-c(1:10)
count<-0
trials<-10000

for (i in 1:trials){
  #samples the integers 5 times without replacement
  if (sort(sample(integers, 5, replace=FALSE))[4]==8){
  #sort the 5 integers and checks the 2nd largest value
    count<-count+1
  }
}


#Probability he will actually estimate the value 8

probabilityA<-count/trials
probabilityA

#Here is B

integers<-c(1:10)
count<-0
trials<-10000

for (i in 1:trials){
  #samples the integers 5 times without replacement
  if (sort(sample(integers, 5, replace=FALSE))[4]<8){
    #sort the 5 integers and checks the 2nd largest value
    count<-count+1
  }
}

#Probability he will underestimate

probabilityB<-(count/trials)
probabilityB

#Here is C

integers<-c(1:10)
count<-0
trials<-10000 

for (i in 1:trials){
  #samples the integers 5 times without replacement
  if (sort(sample(integers, 5, replace=FALSE))[4]>8){
    #sort the 5 integers and checks the 2nd largest value
    count<-count+1
  }
}

#Probability he will overestimate

probabilityC<-(count/trials)
probabilityC
