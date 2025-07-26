data <-read.csv("C:\\Users\\hp\\Downloads\\patient_satisfaction_updated.csv")
head(data)
str(data)

Gender<- prop.table(table(data$Gender))*100
Gender
Education<- prop.table(table(data$Education))*100
Education
Occupation<-prop.table(table(data$Occupation))*100
Occupation
HospitalName<-prop.table(table(data$Hospital.Name))*100
HospitalName

WaitingTime<-prop.table(table(data$Waiting.Time))*100
WaitingTime
Cleanliness<-prop.table(table(data$Cleanliness))*100
Cleanliness
StaffPoliteness<-prop.table(table(data$Staff.Politeness))*100
StaffPoliteness
PrivacyRespected<-prop.table(table(data$Privacy.Respected))*100
PrivacyRespected



data$Overall.Satisfaction<-as.numeric(factor(data$Overall.Satisfaction))
data$Medication.Availability<-as.numeric(factor(data$Medication.Availability))
data$Equipment.Availability<-as.numeric(factor(data$Equipment.Availability))
glm(data$Overall.Satisfaction ~ data$Medication.Availability+data$Equipment.Availability, data = data)


prop.table(table(data$Public.vs.Private.Difference))*100
