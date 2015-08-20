# CourseProject-Tidydata

========
Done by Jikke Romijn and committed on Thursday, August 20, 2015

Course Project for Coursera Getting and Cleaning Data

Using Human Activity Recognition Using Smartphones Dataset
For more information about this dataset contact: activityrecognition@smartlab.ws

========
This repository contains 3 files:
- This README.md file
- An R script: "run_analysis.R"
- A codebook describing in detail the steps that are taken by running the run_analysis.R script to get from the publicly available dataset to a tidy dataset containing mean values for each variable for each research subject and each activity

========
Summary:

The tidy data set contains 68 variables (columns) with descriptive headers and 180 observations (rows).
Each rows contains the mean values of the measurements that were done, for 1 unique combination of Subject and Activity.
There are 30 subjects and 6 activities, thus resulting in 180 observations.

The following list provides more information about each of the variables or columns in the dataset:

1. Subject: the number of the subject person who the experiment data belong to
2. ActivityLabel: the description of the activity that the subject was doing while the measurements were taken
3. through 68. contain mean values for 66 different measurements that were performed on each of the 30 subject persons.

========
For further reference and licence details please read the original README.TXT accompanying the original dataset, which can be downloaded through https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
