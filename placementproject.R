#create vector Convert relevant columns to factors asummarise Plot Filter and Search
#Gender M F .. Spl- Marketing,Finance, HR.... Grade A,B,C,D... D<C<B<A.. Placement: Yes, 
#Age (21-30) ...Experience mean=4 Sd=1
?sample
gender=sample(c('M','F'),100,replace = T)
gender
spl= sample(c('Marketing','Finance','HR'),100,replace = T)
grades= sample(c('A','B','C','D'),100,replace = T)
placement =sample(c('Y','N'),100,replace = T)
age= ceiling(runif(100,21,30))
age
experience=rnorm(100,4,1)
data=data.frame(gender,spl,grades,placement,age,experience)
data
summary(data)
plot(data)
str(data)
head(data)
data$grade= factor(data$grade,ordered = T,c("D","C","B","A"))
str(data)
head(data)
#store data in CSV file, Open CSV in Excel
write.csv(data,file = "./data/Placementproject.csv")
library(dplyr)
?dplyr
data %>% group_by(gender) %>% count(placement)

data %>% group_by(gender,placement) %>% summarise(mean(experience),max(experience),mean(age))
# from each gender and spl give max experience
data%>% filter(spl=="Marketing")%>%group_by(gender) %>% summarise(max(experience))
hist(data$age)
