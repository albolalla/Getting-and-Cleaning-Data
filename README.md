Getting-and-Cleaning-Data
=========================

Getting and Cleaning Data

##How I did everything

*I read all the tables needed and gave different names.
test <- read.table("./test/y_test.txt")
test1 <- read.table("./test/X_test.txt")
train <- read.table("./train/y_train.txt")
train1 <- read.table("./train/X_train.txt")
subject_test <- read.table("./test/subject_test.txt")
subject_train <- read.table("./train/subject_train.txt")

*I decided to use rbind instead of cbind, so chose these pairs, all with the same amount of variables (rows).
test_train <- rbind(test, train)
test1_train1 <- rbind(test1, train1)
sub_test_train <- rbind(subject_test,subject_train)

*I changed the names of these two columns which didn't have a proper one.
colnames(test_train) <- c("activity")
colnames(sub_test_train) <- c("subject")

*I created two dataframes, one with the 6 activity labels and the other one with the 561 features in order to use them later.
labels <- read.table("./activity_labels.txt")
features <- read.table("./features.txt")

*Here, I changed these column names into vectors, and used them to rename the data frame with the variables:
#col <- c(as.vector(colnames(test1_train1)))
feat <- c(as.vector(features$V2))
colnames(test1_train1) <- c(feat)

*I subset the dataframe in order to get the columns from the original one with the mean and the standard deviation data, I got two differen tables and bound them.
m <- test1_train1[grep("mean", names(test1_train1), value=TRUE)]
s <- test1_train1[grep("std", names(test1_train1), value=TRUE)]
test1_train1 <- cbind(m,s)

*Here, instead of doing it manually, I tried to use a loop to rename the activities.
*I got them, set the numbers corresponding to each one, and created a function to do it.
lab <- c(as.vector(labels$V2))
num <- c("1","2","3","4","5","6")
gsub2 <- function(pattern, replacement, x, ...) {
  for(i in 1:length(pattern))
    x <- gsub(pattern[i], replacement[i], x, ...)
  x
}
test_train$activity <- gsub2(num, lab, test_train$activity)

*I got rid of capital letters and symbols so that column names were as told.
names(test1_train1) <- tolower(names(test1_train1))
names(test1_train1) <- gsub(")", "", names(test1_train1))
names(test1_train1) <- gsub("\\(", "", names(test1_train1))
names(test1_train1) <- gsub("-", "", names(test1_train1))

*Once everything was as needed in the three different tables, I used cbind to join them.
test_train_all <- cbind(sub_test_train,test_train,test1_train1)

*In order to create the second independent tidy data, I used the funcions "melt" and "dcast" from the package "reshape2".
library(reshape2)
melt_all <-melt(test_train_all, id=c("subject", "activity"))
final_table <- dcast(melt_all, subject + activity ~ variable ,mean)
