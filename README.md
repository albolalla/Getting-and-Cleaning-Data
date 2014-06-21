Getting-and-Cleaning-Data
=========================

Getting and Cleaning Data

##I read all the tables needed and gave different names.

 


 ##I decided to use rbind instead of cbind, so chose these pairs, all with the same amount of variables (rows).

 
 

 ##I changed the names of these two columns which did not have a proper one.


 

 ##I created two dataframes, one with the 6 activity labels and the other one with the 561 features in order to use them later.
 

 

 ##Here, I changed these column names into vectors, and used them to rename the data frame with the variables:

 

 ##I subset the dataframe in order to get the columns from the original one with the mean and the standard deviation data, I got two differen tables and bound them.

 

 ##Here, instead of doing it manually, I tried to use a loop to rename the activities.

 ##I got them, set the numbers corresponding to each one, and created a function to do it.

 
 

 ##I got rid of capital letters and symbols so that column names were as told.


 ##Once everything was as needed in the three different tables, I used cbind to join them.

 

 ##In order to create the second independent tidy data, I used the funcions "melt" and "dcast" from the package "reshape2".

 
