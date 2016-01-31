# Clean Data Project
### data collected from the accelerometers from the Samsung Galaxy S smartphone assigment of getting and cleanning data of Data Science Specialization

####Files
The repo contain the follow files:
* run_analysis.R
* Readme.md
* CodeBook.md
 
#### File Description
* run_analysis.R: Perform data transformation read "that it makes? and How does It work?".
* Readme.md: desbribes of genal form the target of files.
* CodeBook.md: Give an overall description of the new data obtained.

####Data Source
The data  was obtained from the next website: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

####That it makes?
It makes a new data frame making:
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement.
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names.
* From the data set in the last step, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

####How does It work?
Follow the next steps:
* Download the file and unzip
* Open R Console or RStudio and set the workspace inside the folder unzipped, using setwd() function
* Run the run_analysis.R Script.
