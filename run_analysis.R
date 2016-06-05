library(tidyr)
library(dplyr)

actlabfile    <- "../data/UCI HAR Dataset/activity_labels.txt"
featurefile   <- "../data/UCI HAR Dataset/features.txt"

subjtestfile  <- "../data/UCI HAR Dataset/test/subject_test.txt"
xtestfile     <- "../data/UCI HAR Dataset/test/X_test.txt"
ytestfile     <- "../data/UCI HAR Dataset/test/y_test.txt"

subjtrainfile  <- "../data/UCI HAR Dataset/train/subject_train.txt"
xtrainfile     <- "../data/UCI HAR Dataset/train/X_train.txt"
ytrainfile     <- "../data/UCI HAR Dataset/train/y_train.txt"

# Process common data
actlabraw <- read.table(actlabfile)
actlabdf <- tbl_df(actlabraw)
rm(actlabraw)
names(actlabdf) <- c("activityid", "activity")

featureraw <- read.table(featurefile)
featuredf <- tbl_df(featureraw)
rm(featureraw)
names(featuredf) <- c("featureid", "feature")

# Process test data
xtestdataraw = read.table(xtestfile)
xtestdf <- tbl_df(xtestdataraw)
rm(xtestdataraw)
names(xtestdf) <-featuredf$feature

# Process train data
xtraindataraw = read.table(xtrainfile)
xtraindf <- tbl_df(xtraindataraw)
rm(xtraindataraw)
names(xtraindf) <-featuredf$feature

# Row Bind Test and Training Data
xmergedata <- rbind(xtestdf, xtraindf)

# Remove duplicate variables since we don't need them anyway
xmergedata <- xmergedata[, !duplicated(names(xmergedata))]

# Keep the mean() and std() variables as instructed
xmergedata <- select(xmergedata, contains("-mean()-"), contains("-std()-"))
names(xmergedata) <- gsub("-", "", names(xmergedata))
names(xmergedata) <- gsub("()", "", names(xmergedata), fixed = TRUE)
names(xmergedata) <- tolower(names(xmergedata))

# Process test activity data
ytestdataraw <- read.table(ytestfile)
ytestdf <- tbl_df(ytestdataraw)
rm(ytestdataraw)
names(ytestdf) <- "activityid"

# Process train activity data
ytraindataraw <- read.table(ytrainfile)
ytraindf <- tbl_df(ytraindataraw)
rm(ytraindataraw)
names(ytraindf) <- "activityid"

# Combine test and train activity data
mergedydf <- rbind(ytestdf, ytraindf)
mergedydf <- left_join(mergedydf, actlabdf, by = "activityid")

# Test Subject Data
subjtestraw <- read.table(subjtestfile)
subjtestdf <- tbl_df(subjtestraw)
rm(subjtestraw)
names(subjtestdf) <- "subjectid"

# Test Train Data
subjtrainraw <- read.table(subjtrainfile)
subjtraindf <- tbl_df(subjtrainraw)
rm(subjtrainraw)
names(subjtraindf) <- "subjectid"

# Combine Test and Train subject data
mergedsubjdf <- rbind(subjtestdf, subjtraindf)

# Bring it all together
mergedalldf <- bind_cols(mergedsubjdf, select(mergedydf, activity)) %>% bind_cols(xmergedata)

# Clean up
rm(subjtraindf, actlabdf, featuredf, mergedsubjdf, mergedydf, subjtestdf, xmergedata, 
   xtestdf, xtraindf, ytestdf, ytraindf, actlabfile, featurefile, subjtestfile, subjtrainfile,
   xtestfile, xtrainfile, ytestfile, ytrainfile)

summary <- mergedalldf %>% group_by(subjectid, activity) %>% summarise_each(funs(mean))

write.table(summary, file = "tidysummary.txt", row.names = FALSE)