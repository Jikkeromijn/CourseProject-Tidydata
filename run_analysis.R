###Set working directory to Coursera directory
setwd("~/Coursera")

###Create a new data directory within the R Script
if (!file.exists("data")) {
  dir.create("data")
}

###Download a file from the internet
if (!file.exists("data/Courseproject.zip")) {
  fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileUrl, destfile="./data/Courseproject.zip", method="curl")
  list.files("./data")
}
  
###Record at what date you downloaded the file
 dateDownloaded <- date()
 dateDownloaded

###Install relevant packages and open their libraries
install.packages("plyr")
library(plyr)

install.packages("dplyr")
library(dplyr)

###Read the downloaded files
SubjectTest <- data.frame(read.table("./data/UCI HAR Dataset/test/subject_test.txt"))
ActivitiesTest <- data.frame(read.table("./data/UCI HAR Dataset/test/y_test.txt"))
DataTest <- data.frame(read.table("./data/UCI HAR Dataset/test/x_test.txt"))

SubjectTrain <- data.frame(read.table("./data/UCI HAR Dataset/train/subject_train.txt"))
ActivitiesTrain <- data.frame(read.table("./data/UCI HAR Dataset/train/y_train.txt"))
DataTrain <- data.frame(read.table("./data/UCI HAR Dataset/train/x_train.txt"))

###Add Subject, Activities and Data together to form 1 2947 by 563 dataset "TotalTest" and a 7352 by 563 dataset "TotalTrain"
TotalTest <- DataTest
TotalTest$Subject <- SubjectTest$V1
TotalTest$Activity <- ActivitiesTest$V1

names(TotalTest)

TotalTrain <- DataTrain
TotalTrain$Subject <- SubjectTrain$V1
TotalTrain$Activity <- ActivitiesTrain$V1

names(TotalTrain)

###Merge TotalTest and TotalTrain to one large dataset called TotalMerge with 10299 observations and 563 variables
TotalMerge <- rbind(TotalTest, TotalTrain)
class(TotalMerge)
head(TotalMerge, n=100)

###Extract only Mean and Standard Deviation for each measurement
TotalData <- TotalMerge[c(1:6,41:46,81:86,121:126,161:166,201,202,214,215,227,228,240,241,253,254,266:271,345:350,424:429,503,504,516,517,529,530,542,543,562,563)]
names(TotalData)
head(TotalData)

###Give the Activity variable descriptive Activity names
attach(TotalData)
TotalData$ActivityLabel[Activity == 1] <- "Walking"
TotalData$ActivityLabel[Activity == 2] <- "Walking Upstairs"
TotalData$ActivityLabel[Activity == 3] <- "Walking Downstairs"
TotalData$ActivityLabel[Activity == 4] <- "Sitting"
TotalData$ActivityLabel[Activity == 5] <- "Standing"
TotalData$ActivityLabel[Activity == 6] <- "Laying"
detach(TotalData)

###Label the total data set with descriptive variable names
names(TotalData) <- c("tBodyAcc-meanX","tBodyAcc-meanY","tBodyAcc-meanZ","tBodyAcc-stdX","tBodyAcc-stdY","tBodyAcc-stdZ","tGravityAcc-meanX","tGravityAcc-meanY",
"tGravityAcc-meanZ","tGravityAcc-stdX","tGravityAcc-stdY","tGravityAcc-stdZ","tBodyAccJerk-meanX","tBodyAccJerk-meanY","tBodyAccJerk-meanZ",
"tBodyAccJerk-stdX","tBodyAccJerk-stdY","tBodyAccJerk-stdZ","tBodyGyro-meanX","tBodyGyro-meanY","tBodyGyro-meanZ","tBodyGyro-stdX","tBodyGyro-stdY",
"tBodyGyro-stdZ","tBodyGyroJerk-meanX","tBodyGyroJerk-meanY","tBodyGyroJerk-meanZ","tBodyGyroJerk-stdX","tBodyGyroJerk-stdY","tBodyGyroJerk-stdZ",
"tBodyAccMag-mean","tBodyAccMag-std","tGravityAccMag-mean","tGravityAccMag-std","tBodyAccJerkMag-mean","tBodyAccJerkMag-std","tBodyGyroMag-mean",
"tBodyGyroMag-std","tBodyGyroJerkMag-mean","tBodyGyroJerkMag-std","fBodyAcc-meanX","fBodyAcc-meanY","fBodyAcc-meanZ","fBodyAcc-stdX","fBodyAcc-stdY",
"fBodyAcc-stdZ","fBodyAccJerk-meanX","fBodyAccJerk-meanY","fBodyAccJerk-meanZ","fBodyAccJerk-stdX","fBodyAccJerk-stdY","fBodyAccJerk-stdZ",
"fBodyGyro-meanX","fBodyGyro-meanY","fBodyGyro-meanZ","fBodyGyro-stdX","fBodyGyro-stdY","fBodyGyro-stdZ","fBodyAccMag-mean","fBodyAccMag-std",
"fBodyBodyAccJerkMag-mean","fBodyBodyAccJerkMag-std","fBodyBodyGyroMag-mean","fBodyBodyGyroMag-std","fBodyBodyGyroJerkMag-mean",
"fBodyBodyGyroJerkMag-std", "Subject", "Activity", "ActivityLabel")

###Create a second,  independent tidy data set with the average of each variable for each activity and each subject
install.packages("reshape2")
library(reshape2)

TidyData <- melt (TotalData, id=c("Subject", "ActivityLabel"))
MeanData <- dcast (TidyData, Subject + ActivityLabel ~ variable, mean)
MeanData

write.table(MeanData, file = "./data/UCI HAR Dataset/TidyDataCourseProject.txt", sep= " ", row.name=FALSE)

###Test to see whether tidy dataset was properly written
Check1 <- data.frame(read.table("./data/UCI HAR Dataset/TidyDataCourseProject.txt", sep= " ", header=TRUE))


