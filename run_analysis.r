library(dplyr)

# 0. Load the data
features <- read.table("features.txt")
activityFactors <- read.table("activity_labels.txt")

dataTest <- read.table("test/X_test.txt", col.names = features[,2], check.names = FALSE)
testActivities <- read.table("test/y_test.txt", colClasses = "factor")
testSubjects <- read.table("test/subject_test.txt", colClasses = "factor")
dataTest[, "Activity"] <- testActivities[,1]
dataTest[, "Subject"] <- testSubjects[,1]

dataTrain <- read.table("train/X_train.txt", col.names = features[,2], check.names = FALSE)
trainActivities <- read.table("train/y_train.txt", colClasses = "factor")
trainSubjects <- read.table("train/subject_train.txt", colClasses = "factor")
dataTrain[, "Activity"] <- trainActivities[,1]
dataTrain[, "Subject"] <- trainSubjects[,1]

# 1. Merge test and train data
dataFull <- rbind(dataTest, dataTrain)

# 2. Extract only the measurements on the mean and standard deviation
meanAndStdCols <- grep("mean\\(\\)|std\\(\\)|Activity|Subject", names(dataTest))
meanAndStd <- dataFull[,meanAndStdCols]

# 3. Replace Activity numbers with descriptive names
levels(meanAndStd[,"Activity"]) <- activityFactors[,2]

# 4. Appropriately labels the data set with descriptive variable names
dataNames <- names(meanAndStd)
dataNames <- sub("^t", "Time", dataNames)
dataNames <- sub("^f", "Frequency", dataNames)
dataNames <- sub("std\\(\\)", "Std", dataNames)
dataNames <- sub("mean\\(\\)", "Mean", dataNames)
names(meanAndStd) <- dataNames

# 5. Averages for each activity and subject
summarisedData <- meanAndStd %>% group_by(Activity, Subject) %>% summarise_all(funs(mean))
