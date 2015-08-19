# CourseProject-Tidydata
========
Course Project for Coursera Getting and Cleaning Data
Using Human Activity Recognition Using Smartphones Dataset
For more information about this dataset contact: activityrecognition@smartlab.ws

========
This repository contains 3 files:
- This README.md file
- The tidy data set that resulted from the assignment: "TidyDataCourseProject.txt"
- An R script that, when run on the original datasets, has the tidy data set in this repository as its output: "run_analysis.R"

========
The tidy data set contains 69 variables (columns) with descriptive headers and 180 observations (rows).
Each rows contains the mean values of the measurements that were done, for 1 unique combination of Subject and Activity.
There are 30 subjects and 6 activities, thus resulting in 180 observations.

The following list provides more information about each of the variables or columns in the dataset:

1. Subject: the number of the subject person who the experiment data belong to
2. ActivityLabel: the description of the activity that the subject was doing while the measurements were taken
3. through 68. contain 66 different measurements that have been described in more detail in the README.txt file
   that accompanies the original data set. This README.txt file can be found at: 
   
   http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
  Here are the data for the project: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

69. Activity: this is the original variable containing the activities, but only as numbers, not as descriptive text strings.



License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
