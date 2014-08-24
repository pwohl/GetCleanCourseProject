
mainDir<-"C:\\WorkSpace\\Coursera\\GetandClean\\Project\\UCI HAR Dataset"

setwd(mainDir)

###Read in all data needed to create the tidy data set:
##Read in activity a
activityLabels<-read.table("activity_labels.txt")
features<-read.table("features.txt")

##Read in the training data set
xTrain<-read.table("./train/X_train.txt")
yTrain<-read.table("./train/y_train.txt")
subjectTrain<-read.table("./train/subject_train.txt")

##Read in the test data set
xTest<-read.table("./test/X_test.txt")
yTest<-read.table("./test/y_test.txt")
subjectTest<-read.table("./test/subject_test.txt")

##1.Merges the training and the test sets to create one data set.


DATA<-rbind(xTrain,xTest)
names(DATA)<-features$V2

ACTIV<-rbind(yTrain,yTest)
names(ACTIV)<-"Activity"

SUBS<-rbind(subjectTrain,subjectTest)
names(SUBS)<-"Subjects"

#Combine all together
ALL<-cbind(SUBS,ACTIV,DATA)



#2.Extracts only the measurements on the mean and standard deviation for each measurement.
##Visiually inspecting the names suggests mean is "mean" in the variable names
##and std is standard deviation

SubAll<-ALL[,c(grep("Activity|Subjects|[Ss]td|[Mm]ean",names(ALL)))]

#3.Uses descriptive activity names to name the activities in the data set
##Use the names in the activity label file

SubAll$Activity[SubAll$Activity == 1] <- "walking"
SubAll$Activity[SubAll$Activity == 2] <- "upstairswalking"
SubAll$Activity[SubAll$Activity == 3] <- "downstairswalking"
SubAll$Activity[SubAll$Activity == 4] <- "sitting"
SubAll$Activity[SubAll$Activity == 5] <- "standing"
SubAll$Activity[SubAll$Activity == 6] <- "laying"

#4.Appropriately labels the data set with descriptive variable names. 
##Change Variable names in 
##Replace - and ,
names(SubAll)<-gsub("-|,", "", names(SubAll))
##( and ) are not regular expressions, so replace them one ata time
names(SubAll)<-gsub("(", "", names(SubAll),fixed=TRUE)     
names(SubAll)<-gsub(")", "", names(SubAll),fixed=TRUE) 
##some column names have bodybody in them, I assume this is a mistake and
##replace it with body
names(SubAll)<-gsub("bodybody", "body", names(SubAll),fixed=TRUE)  
##make all variable names lower case
names(SubAll)<-tolower(names(SubAll))    


#5.Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
##Create tidy data set, mean by activity and subject, 
TidyData1<-aggregate.data.frame(SubAll,by=list(SubAll$subject,SubAll$activity),mean)
##The operation produces two columns not needed which are taken out here
TidyData<-TidyData1[,-(3:4)]
names(TidyData)<-names(SubAll)

write.table(TidyData,"TidyData.txt",sep=",",row.name=FALSE)

