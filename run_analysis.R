##### Coursera Data Science - 3. Getting and Cleaning Data #####
##### Course Project #####

## Step 1. Merges the training and the test sets to create one data set.

#Download files and unzip
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url,
              destfile='HAR.zip',
              method="curl",
              mode="wb") # "wb" means "write binary," and is used for binary files
unzip(zipfile = "HAR.zip") # unpack the files into subdirectories 

#Read in the subject files
testsubject  <- read.table("test/subject_test.txt", header = FALSE)
trainsubject <- read.table("train/subject_train.txt", header = FALSE)

#Read in the activity files ("Y") from test and train in the wd
testactivity  <- read.table("test/Y_test.txt" , header = FALSE)
trainactivity <- read.table("train/Y_train.txt", header = FALSE)

#Read in features data sets ("X') from test and train in the wd
testfeatures  <- read.table("test/X_test.txt", header = FALSE)
trainfeatures <- read.table("train/X_train.txt", header = FALSE)

#----- note: did not use Intertial data files -----#

# Inspect files
head(testactivity)
head(trainactivity)
head(testsubject)
head(trainsubject)
head(testfeatures)
head(trainfeatures)

# Merge training data and test data (using rbind)
subject <- rbind(trainsubject, testsubject)
activity <- rbind(trainactivity, testactivity)
features <- rbind(trainfeatures, testfeatures)


# Change the factor levels (1-6) to match activity labels
labels <- read.table("activity_labels.txt", header = FALSE)
activity$V1 <- factor(activity$V1, levels = as.integer(labels$V1), labels = labels$V2)

# Name activity and subject columns
activity <- activity %>%
    rename("activity" = `V1`)

subject <- subject %>%
    rename("subject" = `V1`)

# Name feature columns from features text file
featurestxt <- read.table("features.txt", head = FALSE)
names(features)<- featurestxt$V2


## Step 2. Extracts only the measurements on the mean and standard deviation 
## for each measurement.

featurestxt <- read.table("features.txt", header = FALSE)
names(features) <- featurestxt$V2 #Assign names from features.txt to features

meanstdev <- c(as.character(featurestxt$V2[grep("mean\\(\\)|std\\(\\)", 
                                                      featurestxt$V2)]))
subset_data <- subset(features, select = meanstdev)

## Steps 3 and 4. Combine data sets with activity names and labels
subject_activity <- cbind(subject, activity)
final_data <- cbind(subset_data, subject_activity)

#Label the data set with descriptive variable names
names(final_data) <- gsub("^t", "time", names(final_data))
names(final_data)<-gsub("^f", "frequency", names(final_data))
names(final_data)<-gsub("^Acc", "Acceleration", names(final_data))
 
## Step 5. Create a second, independent tidy data set with the average of each
## variable (mean and stdev) for each activity and each subject.

library(reshape2)

avg_data <- melt(final_data, c("subject", "activity")) 
avg_data <- dcast(avg_data, subject + activity ~ variable, mean)

# Save to text file
write.table(avg_data, file ="avg_data.txt", row.names = FALSE)
