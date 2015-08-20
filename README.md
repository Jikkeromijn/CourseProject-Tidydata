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
6. the txt-files containing the sib
