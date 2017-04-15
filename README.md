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
- "sexeduc" - Would you be for or against sex education in the public schools?
- "region" - Region of interview 
- "premarsx" - Views on premarital sex: always wrong, almost always wrong, wrong only sometimes, or not wrong at all 
- "xmarsex" - Views on extramarital sex: always wrong, almost always wrong, wrong only sometimes, or not wrong at all
- "pornlaw" - Views on pornography laws: (1) there should be laws against the distribution of pornography whatever the age; (2) there should be laws against the distribution of pornography to persons under 18; (3) there should be no laws formitting the distribution of pornography; (8) don't know; (9) no answer; (IAP) not applicable
- "agewed" (incomplete years, may have to be dropped) - How old were you when your (current) marriage began?
- "marital" - Marital status: married, widowed, divorced, separated, or never been married
- "partyid" - Party ID: Do you usually think of yourself as a Republican, Democrat, Independent, or what - (0) strong Democrat; (1) not very strong Democrat; (2) Independent, close to Democrat; (3) Independent (neither, no response); (4) Independent, close to Republican; (5) Not very strong Republican; (6) Strong Republican; (7) Other party, refused to say; (8) Don't know; (9) No answer
- "hapmar" - How would you describe your marriage - (1) very happy, (2) pretty happy, (3) not too happy, (8) don't know, (9) no answer, (IAP) not applicable
- "relig" - Religious preference: (1) Protestant; (2) Catholic; (3) Jewish; (4) None; (5) Other; (6) Buddhism; (7) Hinduism; (8) Other Eastern Religions; (9) Muslim/Islam; (10) Orthodox-Christian; (11) Christian; (12) Native American; (13) Inter-NOndenomenational; (98) Don't know; (99) No Answer
- "denom" - Specific Denomination if Protestant: Southern Baptist, United Methodist, Baptist (don't know which), Other 
- "fund": how fundamental is respondent (fundamentalist, moderate, liberal)
- "childs": number of children (0-8)
- "age": age of respondent (18-89)
- "divorce": ever been divorced or separated
- "widowed": ever been widowed
- "educ": highest year of school completed (0-20)
- "natdrug": dealing with drug addiction
- "wrkstat": respondent's labor force status (fulltime, parttime, retired, keeping house, school, unemployed, other)
- "spwrksta": spouse's labor force status (fulltime, parttime, retired, keeping house, school, unemployed, other)
- "sphrs2": number of hours spouse usually works per week
- "polviews": think of self as liberal or conservative (liberal, slightly liberal, moderate, slightly conservative, conservative, other)
- "happy": general happiness (not too happy, pretty happy, or very happy)
- "trust": can people be trusted (can, cannot, or depends)
- "class": subjective class identification (lower, working, middle, upper)
- "income": total family income ($8000-9999, $10000-14999, $15000-19999, $20000-24999, $25000 or more, other)

## Usage 
- "SourceFile.r": The source file runs the code necessary to download the zipped SPSS (.sav), unzip, convert to an R data file (.rda), save the .rda file as "GSScomplete.rda", and extract our variables of interest into a new R data file, "GSSdivorce.rda". **Due to the large size of the original GSS dataset, this file should only be run if a new copy of the complete GSS dataset is required.**
- "divorce_analysis.rmd": The analysis file uses our "GSSdivorce.rda" dataset to examine the data and build our analysis. 

## Progress Log 
+ Created GitHub repository and downloaded GSS data (3/19)
+ Created ReadMe file (4/15)
+ Converted GSS SPSS data file to .rda (4/15)
+ Subsetted original data frame to variables of interest (4/15)
+ Created project file (4/15)

## Contributors 
+ Celeste - Writing 
+ Sarah - Data wrangling 
