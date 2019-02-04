library(dplyr)
library(tidyr)

data <-  read.csv("data_input/reputation.data", header=FALSE, sep="#") %>% 
  select(-"V8") %>% 
  separate(V7, c("LAT", "LNG"), ",") 

colnames(data) <-  c("IPAddr", "Reliability", "Risk", "Type", "Country", "Locale", "LAT", "LNG")
data$LNG <- as.numeric(data$LNG)
data$LAT <- as.numeric(data$LAT)
data$Reliability <- as.factor(data$Reliability)

data <- data[data$Type != "Malicious Host;Spamming" & data$Risk %in% 3:4, ]
data$Risk <- as.factor(data$Risk)
data$Type <- factor(data$Type)

data_mh <- tail(data[data$Type == "Malicious Host", ],20)
data_s <- tail(data[data$Type == "Spamming", ], 20)
data_sample <- rbind(data_mh, data_s)
data_sample <- data_sample[sample(nrow(data_sample), nrow(data_sample)), ]