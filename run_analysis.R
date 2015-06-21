runanalysis <- function() {
# Ensure the plyr package is loaded
    library(plyr)
# Read in the Features.
    features <- read.table("features.txt")[, 2]

# Read in the Training and Test Subject Data and bind them together into one dataset.  Rename the column Subject.
    trainsubject <- read.table("train/subject_train.txt")
    testsubject <- read.table("test/subject_test.txt")
    allsubject <- rbind(trainsubject, testsubject)
    names(allsubject) <- "Subject"

# Read in the Training and Test Y Data and bind them together into one dataset.
    trainy <- read.table("train/y_train.txt")
    testy <- read.table("test/y_test.txt")
    ally <- rbind(trainy, testy)
    names(ally) <- "id"

# Read in the Activity Labels data.
    activitylabels <- read.table("activity_labels.txt")

# This function will be used to Capitalize the first letter of each word of an Activity Description, replace "_" with " ".
    activitydesc <- function(x) {
        s <- strsplit(x, "_")[[1]]
        paste(toupper(substring(s, 1,1)), substring(s, 2), sep="", collapse=" ")
    }

# Calls the activitydesc function to modify the activity labels.
    activitymod <- sapply(as.character(tolower(activitylabels[, 2])),activitydesc, USE.NAMES=FALSE)
    activities <- data.frame(id=c(1:6),activitymod)

# Merge the activity ids to get the new descriptions
    activitiesjoin <- join(ally,activities)


# Read in the Training and Test X Data and bind them together into one dataset.  Rename the columns to the names of the features.
    trainx <- read.table("train/X_train.txt")
    testx <- read.table("test/X_test.txt")
    allx <- rbind(trainx, testx)
    names(allx) <-features

# Find the columns that contain "-mean()" or "-std()".
    meanstdcol <- sort(c(grep("-mean\\(\\)",features),grep("-std\\(\\)",features)))
    meanstddata <- allx[, meanstdcol]

# Rename the column names of each of the features to make them more descriptive
    names(meanstddata) <- sub("^t", "Time", names(meanstddata))
    names(meanstddata) <- sub("^f", "Frequency", names(meanstddata))
    names(meanstddata) <- sub("Acc", "Accelerometer", names(meanstddata))
    names(meanstddata) <- sub("Gyro", "Gyroscope", names(meanstddata))
    names(meanstddata) <- sub("-mean\\(\\)", "Mean", names(meanstddata))
    names(meanstddata) <- sub("-std\\(\\)", "StdDev", names(meanstddata))
    names(meanstddata) <- sub("BodyBody", "Body", names(meanstddata))
    names(meanstddata) <- gsub("Mag", "Magnitude", names(meanstddata))
    names(meanstddata) <- gsub("-", "", names(meanstddata))

# Bind all of the columns together to get a clean dataset to compute the column means.
    tidypre <- cbind(allsubject, Activity=activitiesjoin[, 2], meanstddata)

# Use the ddply function to compute means across the Subjects and Activities.
    tidy <- ddply(tidypre, .(Subject, Activity), colwise(mean))

# Add "Mean" to all of the column names except the Subject and Activity headings.
    names(tidy)[-c(1,2)] <- paste0("Mean", names(tidy)[-c(1,2)]) 

# Write the final tidy dataset to the working directory and notify the user the file has been created.
    write.table(tidy, "tidy.txt", row.names = FALSE)
    response <- "The tidy.txt file has been created."
    response
}

#Call and run the function
runanalysis()
