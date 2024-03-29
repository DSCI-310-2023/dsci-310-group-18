library(group18package)
# takes in training_split.csv generated by 03

# produces a csv file inside data/modelling

source('R/joining_data.R')

# reading file created in 03
heart_training <- clean_csv('data/modelling/training_split.csv')

# Creating data subsets for forward selection model using training data
heart_data_subset<-heart_training%>%
    select(diagnosis_f, age, rest_bp, max_heart_rate, chest_pain, sex) %>%
    na.omit()

# Saving data subset for forward selection
write_csv(heart_data_subset, 'data/modelling/heart_data_subset.csv')