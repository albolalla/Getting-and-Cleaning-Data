run_analysis.R
==============

Intro
-----

It's a short script that gets what is asked for in the Course Project.
The first line is needed to set your working directory where the data is. You can download it [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

Packages needed
---------------
You will need to load the reshape2 package.
```R
install.packages("reshape2")
library(reshape2)
```

What it does:
-------------

It follows the following five steps and creates a file with the final data set:

1. *Merges the training and the test sets to create one data set.*
 - From **line 2 to 7**, it reads all the tables needed, and in **lines 8 to 10** merges them.

2. *Uses descriptive activity names to name the activities in the data set.*
 - From **line 11 to 20**, it gets the names of the activities and uses them to replace the numbers.
 
3. *Extracts only the measurements on the mean and standard deviation for each measurement.*
 - From **line 23 to 31**, it replaces the names of the columns by the features, gets only the measurements needed and deletes the ones where the meanFreq, not asked for in the exercise, is calculated.

4. *Appropriately labels the data set with descriptive variable names.*
 - From **line 33 to 36**, it changes all the variable names to lower case and takes out all the symbols.

5. *Creates a second, independent tidy data set with the average of each variable for each activity and each subject.*
 - In **lines 38 and 39**, it melts and dcasts the data set so we get the data set witn the average for each activity and each subject.


The last line just writes the final table into a txt file





