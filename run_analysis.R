## Step 1
## Read data from train folder
X_train <- read.csv("./train/X_train.txt", sep = "", stringsAsFactors = FALSE, header = FALSE)
y_train <- read.csv("./train/y_train.txt", header = FALSE)
subject_train <- read.csv("./train/subject_train.txt", header = FALSE)

## Step 2
## Read data from test folder
X_test <- read.csv("./test/X_test.txt", sep = "", stringsAsFactors = FALSE, header = FALSE)
y_test <- read.csv("./test/y_test.txt", header = FALSE)
subject_test <- read.csv("./test/subject_test.txt", header = FALSE)

##Step 3
## Read features.txt, select the 2nd column containing column names
## Apply these names to the individual datasets
## Each variable has a descriptive name
colnames <- read.table("features.txt", stringsAsFactors = FALSE)
colnames <- colnames[,2]
colnames(X_train) <- colnames
colnames(X_test) <- colnames

##Step 4
## Select the column names with mean() and std()
## ie mean and standard deviation and extract only those columns
selected_col <- c(grep("mean()", colnames, value = TRUE, fixed = TRUE), grep("std()", colnames, value = TRUE, fixed = TRUE))
train_data <- X_train[,selected_col]
test_data <- X_test[,selected_col]

##Step 5
## Bind together the required columns and rows to get a combined dataset
## of train and test data
train_data <- cbind(subject_train, y_train, train_data)
test_data <- cbind(subject_test, y_test, test_data)
colnames(train_data)[1:2] <- c("subject_ID", "activity_ID")
colnames(test_data)[1:2] <- c("subject_ID", "activity_ID")
data <- rbind(train_data, test_data)

##Step 6
## Remove () and - sign from column names
colnames(data) <- gsub("\\()", "", colnames(data))
colnames(data) <- gsub("\\-", "\\_", colnames(data))

##Step 7
## Read activity labels from activity_labels.txt 
## Use this to factor the activity_ID column
## and replace the numbers with a descriptive activity names
activity_labels <- read.table("activity_labels.txt", stringsAsFactors = FALSE)
colnames(activity_labels) <- c("activity_ID", "activity_name")
data[,"activity_ID"] <- factor(data$activity_ID, labels = activity_labels$activity_name)
colnames(data)[2] <- c("activity_name")

##Step 8
## Create a new tidy dataset with the average of each variable for each activity and each subject
new_data <- data.frame(rep(sort(unique(data$subject_ID)), each = length(activity_labels$activity_name)), rep(activity_labels$activity_name, times = length(unique(data$subject_ID))))
for(i in 3:length(colnames(data))) {
    new_data <- cbind(new_data, as.vector(t(tapply(data[,i], data[,1:2], mean))))
}
colnames(new_data)[1:2] <- c("subject_ID", "activity_ID")

##Step 9
## Rename the columns of the new dataset to make them descriptive
colnames(new_data)[3:68] <- paste(colnames(data)[3:68], "_AVERAGE_VAL", sep = "")

##Step 10
## Output the table in a text file
write.table(new_data, file = "tidy_dataset.txt")