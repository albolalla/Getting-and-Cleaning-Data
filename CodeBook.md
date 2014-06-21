#Intro

In the following lines I will describe what we are told to in the Course Project.

##Variables

###1.*Reading tables.*
 - **test**: data set with the test labels.
 - **test1**: data set with the test set.
 - **train**: data set with the train labels.
 - **train1**: data set with the train set.
 - **subject_test**: data set with the subject who performed the activity for each window sample. It ranges from 1 to 30.
 - **subject_train**: the same as **subject_test**.
 - **labels**: data set with the links between the class labels ahd their activity name.
 - **features**: data set with a list of all features.

###2.*Binding tables.*
 - **test_train**: data set with the activities of both the **test** and the **train** data sets.
 - **test1_train1**: data set with the results of both the **test1** and the **train1** data sets.
 - **m**: data set with the columns where *mean* appears in **test1_train1**.
 - **s**: data set with the columns where *std* apperars in **test1_train1**.
 - **sub_test_train**: data set with the subjects of both the **test** and the **train** data sets.
 - **test2_train2**: data set obtained after binding **m** and **s**.
 - **test_train_all**: data set with **test_train**, **sub_test_train** and **test2_train2** together.

###3.*Vectors.*
 - **lab**: activity names from **labels**.
 - **num**: numbers from 1 to 6.
 - **feat**: feature names from **features**.

###4.*Transformations.*
 - **test_train**: I changed the column name for *activity*. I also replaced each number, 1 to 6, with its corresponding activity name.
 - **sub_test_train**: I changed the column name for *subject*.
 - **test1_train1**: I replaced every column name for the feature names in **feat**.
 - **test2_train2**: I deleted the columns where Freq appeared. I deleted all the symbols in the column names and changed all letter to lower case.
 - **melt_all**: data set obtained after sorting **test_train_all** with one feature per row.
 - **final_table**: data set obtained after rearranging **melt_all** so that there is *"the average of each variable for each activity and each subject"*.
