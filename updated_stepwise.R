# Load the data and remove NAs

rm(list=ls()) #Removes every object from your environment

#Read data
spotify <- read.csv("~/spotify_2000.csv")
#removing index which weirdly came up as a column 
spotify = na.omit(spotify[,-1])
set.seed(123)
#Let us use the log response
target <- (spotify$target)

# Split the data into training and test set
n = dim(spotify)[1] #Sample size
tr = sample(1:n, 
            size = 3700, #reflects about 70% of our dataset
            replace = FALSE) #Without replacement

#removing non numeric variables (artist, uri)
spotify = spotify[,-c(1,2)]

#scale data
train = data.frame(scale(spotify[tr,]))
test = data.frame(scale(spotify[-tr,]))

#taking target out of train/test dataset 
train_no_y = train[,-16]
test_no_y = test[,-16]

#creating vectors for y variables
y_train = target[tr]
y_test = target[-tr]


xxspotify <-model.matrix(~. ,train_no_y)
dfTrain <-data.frame(y_train,train_no_y)

#creating two models.. must be binomial for logistic regression
null = glm(y_train~1, data=dfTrain, family = binomial) #only has an intercept
full = glm(y_train~., data=dfTrain, family = binomial) #model with all variables 

regForward = step(null, #The most simple model
                  scope=formula(full),#Let us analyze all models by adding 1 var at a time until the full model
                  direction="forward", #Adding variables
                  k=log(length(tr))) #This is BIC

#forward regression selected: instrumentalness + danceability + loudness + energy + 
#acousticness + mode + duration_ms

regBack = step(full, #Starting with the full model
               direction="backward", #And deleting variables
               k=log(length(tr))) #This is BIC
#backward selected: danceability + energy + loudness + mode + acousticness + 
#instrumentalness + duration_ms

#hybrid approach.. mix of both forward and backwards
regForward = step(null, #The most simple model
                  scope=formula(full), #The most complicated model
                  direction="both", #Add or delete variables
                  k=log(length(tr))) #This is BIC

#hybrid selected: instrumentalness + danceability + loudness + energy + 
#acousticness + mode + duration_ms
