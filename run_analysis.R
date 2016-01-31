##load the dplyr library for group_by and summarize_each functions
library(dplyr)

## READ THE FILES OF TRAIN AND TEST
x_train <- read.table("train/X_train.txt", header = FALSE)
x_test <- read.table("test/X_test.txt", header = FALSE)

## MERGE THE DATA OF TRAIN AND TEST BY ROWS AND assign TO XDATA FRAME
xdata <- rbind(x_train, x_test)

##READ THE FEATURES NAMES THEN ASSIGN THE NAMES TO XDATA FRAME
features <- read.table("features.txt", header =FALSE)
names(xdata) <- features$V2

## READ THE RESPONSE VAR Y OF TRAIN AND TEST AND MERGE FOR ROW AND assign NAME Y
y_train <- read.table("train/y_train.txt", header = FALSE)
y_test <- read.table("test/y_test.txt", header = FALSE)
ydata <- rbind(y_train, y_test)
names(ydata) <- c("y")

## READ THE SUBJECT VAR Y OF TRAIN AND TEST AND MERGE FOR ROW AND assign NAME SUBJECTDATA
subject_train <- read.table("train/subject_train.txt", header=FALSE)
subject_test <- read.table("test/subject_test.txt", header=FALSE)
subjectdata <- rbind(subject_train, subject_test)
names(subjectdata) <- c("subjectData")

##FILTER THE NAMES OF XDATA JUST BY HAVE IN mean and std then assign the data to merge_data and join by column
names_data <- grep("mean|std",names(xdata),value=TRUE)
merge_data <- xdata[,names_data]
merge_data <- cbind(merge_data, ydata, subjectdata)

##READ THE ACTIVITY NAMES LAVELS AND ASSIGN THE LAVEL TO Y VAR OF merge_data
activity_labels <- read.table("activity_labels.txt", header =FALSE)
merge_data$y <- as.factor(merge_data$y)
levels(merge_data$y)[levels(merge_data$y)==1] <- as.character(activity_labels[1,2])
levels(merge_data$y)[levels(merge_data$y)==2] <- as.character(activity_labels[2,2])
levels(merge_data$y)[levels(merge_data$y)==3] <- as.character(activity_labels[3,2])
levels(merge_data$y)[levels(merge_data$y)==4] <- as.character(activity_labels[4,2])
levels(merge_data$y)[levels(merge_data$y)==5] <- as.character(activity_labels[5,2])
levels(merge_data$y)[levels(merge_data$y)==6] <- as.character(activity_labels[6,2])

##assign new names replacing f by frecuency and t by time
names(merge_data) <- gsub("-",".",sub("^f","frecuency",sub("^t", "time", names(merge_data))))

##grouping by y and subjectData Vars
grouped <- group_by(merge_data, y, subjectData)
res <- summarise_each(grouped,funs(mean))

##show the data
View(res)
