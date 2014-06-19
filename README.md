Final Project for Getting and Cleaning Data
===========================================
The script run_analysis.R perfroms the following actions on the input dataset according to the project:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set.
4. Appropriately labels the data set with descriptive variable names.
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## The dataset

The zip file was downloaded and put in the Home folder of the user. The project mentions that " code should have a file run_analysis.R in the main directory that can be run as long as the Samsung data is in your working directory" and hence the data was manually downloaded. The link for the data is:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Running the Script

The script works on calling source("run_analysis.R") when it is placed inside the data Samsung Data folder.
The script is divided into 10 steps, which are mentioned in the comments.

The steps are as follows: 

1. Reads the data from the 3 files in the train folder.

2. Reads the data from the 3 files in the test folder.

3. The features.txt contains all the 561 variables that are there in the X_train/test dataset. The features.txt file is read by the script and the column names are extracted and applied to the 2 files, thus giving a descriptive variable name to each column.

4. Grep is used to extract the column names containing 'mean' and 'std'. The data is then subsetted keeping only these columns.

5. All the 3 files for the test and train folder are bound together using cbind(). Then the 2 datasets are bound together using rbind().

6. '-' and '()' are removed from column names as they hinder certain function calls. Example-  In data$tBodyAcc-mean()-X the mean() is perceived as a function and '-' as a minus sign. Hence they are removed.

7. Activity labels are read from the labels text file. The activity_ID column values are factored and replaced by descriptive activity names. The column name is reassigned.

8. A new tidy dataset is created calling the data.frame() function. The values of the different columns are averaged using tapply() function inside a 'for loop' going over different columns of the dataset. The values are averaged for each subject and each activity.

9. The columns of the new dataset are relabelled to make the names descriptive.

10. The new dataset is written into a text file called tidy_dataset.txt.

## The Tidy dataset

The tidy dataset contains 180 rows and 68 variables. 
This is a tidy dataset based on the principles that:

1. Each variable forms 1 column.
2. Each observation forms 1 row.
3. The dataset has only 1 type of information.

The new dataset has averaged values for each variable, for each subject classified according to his/her activities. The cleaned dataset is also included in the repo.  
