# CourseraDSCourse3Project
Contains files used in the Getting and Cleaning Data course of the Johns Hopkins Data Science Specialization offered through Coursera

# Getting and Cleaning Data Project

## Project Overview
The purpose of this project was to demonstrate an ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. Primary requirements included the submission of a tidy data set as described below and a code book that describes the variables, the data, and any transformations or work that were performed to clean up the data called CodeBook.md. 

## Project Dataset Overview

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data for this project were collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

<http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>

Here are the data for the project: 

<https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>

## The *run_analysis.R* Script

The *run_analysis.R* script included in the repo performs the following steps on the data to produce the desired tidy dataset.

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.  This final tidy data set is written to the working directory.

## Key Requirements Prior to Running the *run_analysis.R* Script
1. Download the zipped data from <https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>.
2. Unzip the data from the download to produce a folder named **UCI HAR Dataset**
3. Set the **UCI HAR Dataset** folder containing the unzipped files as the working directory in R.
4. Ensure that the **plyr** package is installed.  (The script will load the library when ran.)
