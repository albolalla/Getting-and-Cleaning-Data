setwd("./UCI HAR Dataset")
test <- read.table("./test/y_test.txt")
test1 <- read.table("./test/X_test.txt")
train <- read.table("./train/y_train.txt")
train1 <- read.table("./train/X_train.txt")
subject_test <- read.table("./test/subject_test.txt")
subject_train <- read.table("./train/subject_train.txt")
test_train <- rbind(test, train)
test1_train1 <- rbind(test1, train1)
sub_test_train <- rbind(subject_test,subject_train)
    
colnames(test_train) <- c("activity")
labels <- read.table("./activity_labels.txt")
lab <- c(as.vector(labels$V2))
num <- c("1","2","3","4","5","6")
gsub2 <- function(pattern, replacement, x, ...) {
        for(i in 1:length(pattern))
                x <- gsub(pattern[i], replacement[i], x, ...)
        x
}
test_train$activity <- gsub2(num, lab, test_train$activity)

colnames(sub_test_train) <- c("subject")
features <- read.table("./features.txt")
feat <- c(as.vector(features$V2))
colnames(test1_train1) <- c(feat)
m <- test1_train1[grep("mean", names(test1_train1), value=TRUE)]
s <- test1_train1[grep("std", names(test1_train1), value=TRUE)]
test2_train2 <- cbind(m,s)
mean_freq <- grep("Freq", names(test2_train2), value=TRUE)
test2_train2[c(mean_freq)] <- list(NULL)

names(test2_train2) <- tolower(names(test2_train2))
names(test2_train2) <- gsub("\\()", "", names(test2_train2))
names(test2_train2) <- gsub("-", "", names(test2_train2))
test_train_all <- cbind(sub_test_train,test_train,test2_train2)

melt_all <-melt(test_train_all, id=c("subject", "activity"))
final_table <- dcast(melt_all, subject + activity ~ variable ,mean)

write.table(final_table, "./mydata.txt", sep="\t")
