### Source File - Marriage/Divorce Project

setwd("/Users/Sarah/Documents/Github/data-science-project/")

library(foreign)
### downloading GSS data, remove "#" to run code if necessary
#temp <- tempfile()
#download.file("http://gss.norc.org/documents/spss/GSS_spss.zip",temp, mode="wb")
#unzipped <- unzip(temp, exdir=getwd())
#filename <- grep("sav",unzipped)
#GSS.complete <- read.spss("C:/Users/Sarah/Documents/GSS_spss/GSS7214_R6b.sav", to.data.frame = TRUE)
# clear memory - suggestion courtesy of GitHub user ajdamico
#z <- GSS.complete
#rm(GSS.complete )
#gc()

# repeat
#GSS.complete <- z
#rm( z )
#gc()

#save as rda
#save(GSS.complete , file = "GSScomplete.rda")

## load complete data set, if necessary
load("C:/Users/Sarah/Documents/GitHub/data-science-project/GSScomplete.rda")
str(GSS.complete)
head(GSS.complete)

## variable names
## survey-related variables:
# "oversamp"	weights for black oversamples
# "formwt"	weight to deal with experimental randomization
# "wtssall"	weight variable
# "sampcode"	sampling error code
# "sample" sampling frame and method
# id 
# ballot 
# year 

var_list <- c("oversamp", "formwt", "wtssall", "sampcode", "sample", "id", "ballot", 
          "year", "sexeduc", "region", "premarsx", "xmarsex", "pornlaw", "agewed", 
          "marital", "partyid", "hapmar", "denom", "fund", "childs", "degree",
          "age", "divorce", "widowed", "educ", "natdrug", "wrkstat", "spwrksta",
          "polviews", "happy", "trust", "class", "income", "version", "reg16", 
          "family16", "famdif16", "born", "parborn", "income91", "size", "attend",
          "relig16", "bible", "helpful", "fair", "consci", "satjob", "satfin", 
          "abnomore", "absingle", "divlaw", "xmovie", "fefam")

GSS.divorce <- GSS.complete[GSS.complete$year>=1996,var_list]
GSS.divorce$Agecat1<-cut(GSS.divorce$age, c(0,18,25,35,45,55,65,75,85,95))
GSS.divorce <- GSS.divorce[GSS.divorce$marital=="MARRIED" | GSS.divorce$marital=="DIVORCED" | GSS.divorce$marital=="SEPARATED", ]
GSS.divorce$marital <- factor(GSS.divorce$marital)
GSS.divorce$marital2 <- "married"
GSS.divorce$marital2 [GSS.divorce$marital == "SEPARATED"] <- "split"
GSS.divorce$marital2 [GSS.divorce$marital == "DIVORCED"] <- "split"
GSS.divorce$marital2 [is.na(GSS.divorce$marital) ==T] <- NA
GSS.divorce$marital2 <- factor(GSS.divorce$marital2)
GSSnew <- GSS.divorce[!is.na(GSS.divorce$marital2),]
summary(GSSnew$marital2)

# to free up RAM, remove the full r data frame
rm( GSS.complete )

# garbage collection: clear up RAM
gc()

# save GSS.divorce
save(GSS.divorce , file = "GSSdivorce.rda")
