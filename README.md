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
- A codebook describing in detail all the variables contained in the tidy data set produced by the run_analysis.R script

The run_analysis.R script was created on a MAC using OS X Yosemite version 10.10.4 and R Studio Version 0.98.1103
========
Summary:

The tidy data set contains 68 variables (columns) with descriptive headers and 180 observations (rows).
Each row contains the mean or standard deviation values of the measurements that were done, for 1 unique combination of Subject and Activity. There are 30 subjects and 6 activities, thus resulting in 180 observations.

This tidy dataset was produced from the raw data set that can be downloaded here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The raw data represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

========
For further reference and licence details please read the original README.TXT accompanying the original dataset, which can be downloaded through https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

========
The run_analysis.R script performs the following actions on the raw dataset:

1. setwd() sets the working directory to the proper directory for working with the raw dataset after it has been downloaded.
2. a new 'data' directory is created if it does not yet exist in the working directory.
3. the raw dataset is downloaded as a zip-file to the data directory.
4. the date and time at which the files were downloaded, are recorded.
5. relevant packages (plyr, dplyr and reshape2) are installed and their libraries opened.
6. the txt-files containing the subject numbers for both the training set and the test set are opened, and so are the txt-files containing the numerically coded activities and the txt-files containing all the measurement data.
7. The subjects, activitities and measurements of the training set are joined together to a new data set called TotalTrain.
8. The subjects, activitities and measurements of the test set are joined together to a new data set called TotalTest.
9. TotalTrain and TotalTest data sets are joined together to a new data set called TotalMerge.
10. TotalMerge is subsetted to keep only the measurement variables representing a mean or a standard deviation, based on the variable list 'features.txt' which is part of the raw data set. The subsetted data are kept as a new data set called TotalData.
11. In TotalData a new variable called ActivityLabel is created, in which the numerical code for activities is replaced by actual text describing the activities. The old numerically coded variable is removed from TotalData.
12. The variable of all measurements in TotalData, from "v3" to "v68", are renamed to be more descriptive of their content.
13. The data set is summarized using 'melt' and 'dcast', keeping only a mean value of all the measurements per subject/activity combination. The summarized data are named MeanData.
14. Write MeanData to the folder containing also the raw data in the working directory.
15. Check to see whether the data were written correctly.
