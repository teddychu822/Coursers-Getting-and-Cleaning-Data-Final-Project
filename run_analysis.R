# Script for Coursera "Getting and Cleaning Data" class
# Class Start Date: June 1, 2015
# Prepared by: Teddy Chu
# Contact Email: teddychu822@yahoo.com

# This R script is part of the final project for the Coursera class "Getting
# and Cleaning Data". The data source can be found in:
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
# The data set consists of two directories: train and test. The script performs
# the following:
#
# 1.Merges the training and the test sets to create one data set.
# 2.Extracts only the measurements on the mean and standard deviation for each
#   measurement.
# 3.Uses descriptive activity names to name the activities in the data set
# 4.Appropriately labels the data set with descriptive variable names.
# 5.From the data set in step 4, creates a second, independent tidy data set
#   with the average of each variable for each activity and each subject.
#
# Load the libraries
library(dplyr)
library(tidyr)
# Read all the data sets into each of its own dataframe
# Change the directory below to where the data is located
setwd("C:/users/tc1587/Documents/Coursera/R/UCI HAR Dataset")
X_test <- read.table("./test/X_test.txt")
X_train <- read.table("./train/X_train.txt")
Y_test <- read.table("./test/Y_test.txt")
Y_train <- read.table("./train/Y_train.txt")
Subj_test <- read.table("./test/subject_test.txt")
Subj_train <- read.table("./train/subject_train.txt")
features <- read.table("./features.txt")

# Update the header names of both the test and train dataframes
# The name in features is stored as Factor and has to be converted to character
# Add a column "CName" to features, and assign it as names of headers of
# both the train and test data frame
features$CName <- as.character(features$V2)
names(X_test) <- features$CName
names(X_train) <- features$CName

# Add the Subject column into the Test and Train data
names(Subj_test)[1] <- "Subject"
names(Subj_train)[1] <- "Subject"
Subj_test$Subject <- as.factor(Subj_test$Subject)
Subj_train$Subject <- as.factor(Subj_train$Subject)
X_test <- cbind(Subj_test, X_test)
X_train <- cbind(Subj_train, X_train)

# Generate a list of activities label and derive the activities column
# Labeling the first column as "V1" allows easy merging into the
# test and train data.
Act_Label <- data.frame(V1=c(1:6),
                        Activities=c('WALKING','WALKING_UPSTAIRS',
                                          'WALKING_DOWNSTAIRS', 'SITTING',
                                          'STANDING', 'LAYING'))

# merge the activities into the Y_test and Y_train tables. The second column
# now cotnains the Activities descriptive names
Y_test <- merge(Y_test, Act_Label)
Y_train <- merge(Y_train, Act_Label)

# Add the Actvitiies to the test and train data frame
X_test <- data.frame(Activities=Y_test$Activities, X_test)
X_train <- data.frame(Activities=Y_train$Activities, X_train)

# Combine the Test and Train data set into a single dataframe
df_Combined <- rbind(X_test, X_train)


# Extract only Columns that show the mean and standard deviation
# of the measurements. Use the regular expression to extract the names
# either with "mean()" or "std()"
df_Combined <- df_Combined[, c(1, 2, grep("mean\\.\\.|std\\.\\.",
                                          names(df_Combined)))]

# Finally, group the data by Subject and Activities, then calculate
# the mean for each variables using the summarize_each function from dplyr
# The remaining columns now contain the Average of the original data set
# Rename the column names by adding the word "Avg-" as prefix indicating
# that these are average values
df_final <-
df_Combined %>%
  group_by(Subject, Activities) %>%
  summarise_each(funs(mean))
names(df_final)[3:68] <- (paste("Avg-", names(df_final)[3:68], sep=""))
write.table(df_final, file="./Final_table.txt", row.names = FALSE)
