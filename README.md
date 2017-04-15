# Bad Romance? 
### <i> Predicting Marriage/Divorce Outcomes in Young Couples </i> 

## Synopsis/Overview 
Given the evolving discourse and perspectives on marriage, we seek to predict the probability that a couple will get a divorce based on social views, attitudes about pornography, fundamentalism of religious views, and instances of premarital sex or extra-marital sex.  Using data from the General Social Survey, we will train an algorithm on a generational cohort from the years 1990-2014 to determine which types of respondents are most likely to experience divorce. Because some features may not be enough to explain or predict divorce outcomes, we will consider conducting a hierarchical clustering analysis to develop typologies or profiles that can be used to simplify how we assess the different levels of risk of divorce for each respondent. As stated in our proposal, we will test three methods of analyzing the data for predictions: (1) logistic regression, (2) decision trees, and (3) random forest. Based on the accuracy results of each method, we will determine the best model for prediction.

## Use
Our project will provide a way for marriage counselors to perform an initial evaluation of how a respondent's social and religious views, together with previous sexual experiences, may contribute to his/her risk of a divorce. This project will provide a set of questions for marriage counselors to use with their clients in order to evaluate and predict whether or not a marriage will end in divorce. 
Our null hypothesis will be that a respondent will not become divorced, whereas our alternate hypothesis is that a respondent will become divorced. A respondent's answers will be compared to the occurrences of divorce and related risk factors found in our dataset, upon which we will have trained our prediction model. Our model will then provide a probability score of how likely a respondent will become divorced in the future.  

## Data Used
Our dataset will be taken from the General Social Survey (GSS) and focus on observations from 1990 to 2014. According to the [GSS website](http://gss.norc.org/About-The-GSS) 
>The GSS contains a standard core of demographic, behavioral, and attitudinal questions, plus topics of special interest. Among the topics covered are civil liberties, crime and violence, intergroup tolerance, morality, national spending priorities, psychological well-being, social mobility, and stress and traumatic events. Altogether the GSS is the single best source for sociological and attitudinal trend data covering the United States.

In addition to standard survey data variables (weights, id, year, etc.), we have extracted the following variables for our analysis:
- "sexeduc" 
- "region" 
- "premarsx"
- "xmarsex"
- "pornlaw"
- "agewed" (incomplete years, may have to be dropped)
- "marital"
- "martype"
- "partyid" 
- "hapmar"
- "denom"
- "fund" 
- "childs"
- "age"
- "divorce"
- "widowed"
- "educ"
- "natdrug"
- "wrkstat"
- "spwrksta"
- "sphrs2" 
- "polviews" 
- "happy" 
- "trust"
- "class"
- "income"

## Usage 


## Progress Log 
+ Created ReadMe file (4/15)
+ Downloaded GSS data in SPSS format and converted to .rda (4/15)
+ Subsetted original data frame to variables of interest (4/15)
+ Created project file (4/15)

## Contributors 
+ Celeste - Writing 
+ Sarah - Data wrangling 
