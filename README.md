# README.md
## Course: Getting and Cleanding Data
## Project: Final Project
## Author: Tim Gaige
## Purpose: This activity is intended to use the tidy data principles and lessons learned in this class to extract a source dataset and transform it into a tidy one to be used for further analysis and processing.

This repo contains the following:
* File: README.md
  * Description: A file that describes the content of this repo.
* File: run_analysis.R
  * Description: This script assumes that you have the appropriate dataset downloaded and in a directory called data relative to the current working directory. The script loads all the pieces of the source dataset and creates two resultant datasets. The first dataset is a merged, tidy version of the mean and standard deviation
  * Details: See below for detailed description of this script
* File: CodeBook.md
  * Description: A description of all the attributes of the resultant datasets and how it was derived from the source data
* File: tidysummary.txt
  * Description: Resultant summary dataset of means of obversations grouped by subject and activity


# Details of run_analysis.R
## Steps to create dataset mergedalldf
* Read in as dataframe activity labels
  * Gave variable name activityid and activity, respectively
* Read in as dataframe feature labels
  * Gave variable name feature
* Read in as dataframe: subject_test.txt, X_test.txt, y_test.txt, subject_train.txt, X_train.txt, y_train.txt
* All dataframes were converted to Table Dataframes using the dplyr package
* Combined X sets from both train and test
* Combined y sets from both train and test
  * Gave variable name of activity id
* Combined subject sets from both train and test
  * Gave variable name of subjectid
* Applied feature names to X sets as variable names
* Filtered out only mean() and std() variables
* Renamed all variable names to remove special characters and made them lowercase
* Joined the merged activity set with the activity label
* Merged subject, activity label and remaining X data variables into a single dataset

## Steps to create dataset summary
* Created a new summary dataset by grouping by subjectid and activity
* Ran mean() for each column
* Stored resultant dataset as summary
* summary dataset was extract using write.table