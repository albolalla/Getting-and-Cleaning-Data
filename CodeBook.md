Intro
=====

In the following lines I will describe what we are told to in the Course Project.

Variables
=========

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
 - **sub_test_train**: data set with the subjects of both the **test** and the **train** data sets.
 - **test2_train2**: subset of **test1_train1** with only the mean and the std.
 - **test_train_all**: data set with **test_train**, **sub_test_train** and **test2_train2** together.
