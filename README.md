# Bad Romance?
### <i> Predicting Marriage/Divorce Outcomes in Young Couples </i>

## Synopsis/Overview
Given the evolving discourse and perspectives on marriage, we seek to predict the probability that a couple will get a divorce based on social views, attitudes about pornography, fundamentalism of religious views, and instances of premarital sex or extra-marital sex.  Using data from the General Social Survey, we will train an algorithm on a generational cohort from the years 1990-2014 to determine which types of respondents are most likely to experience divorce. Because some features may not be enough to explain or predict divorce outcomes, we will consider conducting a hierarchical clustering analysis to develop typologies or profiles that can be used to simplify how we assess the different levels of risk of divorce for each respondent. As stated in our proposal, we will test several methods of analyzing the data for predictions: (1) logistic regression, (2) decision trees, (3) random forest and (4) clustering. Based on the accuracy results of each method, we will determine the best model for prediction.

## Use
Our project will provide a way for marriage counselors or policymakers to get an idea of what contributes to the probability that an individual will get a divorce. This project will provide a set of questions for marriage counselors to use with their clients in order to evaluate and predict whether or not a marriage will end in divorce.
Our null hypothesis will be that a respondent will not become divorced, whereas our alternate hypothesis is that a respondent will become divorced. Our model will then provide a probability score of the likelihood that a respondent will become divorced in the future.  

## Data Used
Our dataset will be taken from the General Social Survey (GSS) and focus on observations from 1996 to 2014. According to the [GSS website](http://gss.norc.org/About-The-GSS)
>The GSS contains a standard core of demographic, behavioral, and attitudinal questions, plus topics of special interest. Among the topics covered are civil liberties, crime and violence, intergroup tolerance, morality, national spending priorities, psychological well-being, social mobility, and stress and traumatic events. Altogether the GSS is the single best source for sociological and attitudinal trend data covering the United States.

We have extracted the variables on the following characteristics for our analysis: opinions on sex education in
the public schools; region of interview; opinions on premarital sex; opinions on extramarital sex; views on
pornography laws; marital status; political party ID; how fundamental is respondent; number of children;
age of respondent; ever been widowed; highest educational degree achieved; respondent’s labor force status;
whether the respondent thinks of self as liberal or conservative; general self-reported happiness; can people
be trusted; self-reported class; self-reported income; region at age 16; who the respondent lived with at
age 16; religion at age 16; frequency of church attendance; does the respondent believe other people would
try to take advantage or be fair; does the respondent believe other people usually try to be helpful; size
of city or town of residence; confidence in scientific community; self-reported job satisfaction; elf-reported
satisfaction with financial situation; whether abortions should be legal for married women who don’t want
more children; whether abortions should be legal if the woman is single and doesn’t want to marry; and
whether the respondent has seen an x-rated movie in the last year.
Not all of these questions were asked of all respondents. Three ballots were administered, so our data had to
be analyzed in groups corresponding to each ballot. We also restricted our data to those who were married or
“split,” split being those who were either divorced or separated.

## Usage
- "SourceFile.r": The source file runs the code necessary to download the zipped SPSS (.sav), unzip, convert to an R data file (.rda), save the .rda file as "GSScomplete.rda", and extract our variables of interest into a new R data file, "GSSdivorce.rda". **Due to the large size of the original GSS dataset, this file should only be run if a new copy of the complete GSS dataset is required.**
- "divorce_analysis.rmd": The analysis file uses our "GSSdivorce.rda" dataset to examine the data and build our analysis.

## Progress Log
+ Created GitHub repository and downloaded GSS data (3/19)
+ Created ReadMe file (4/15)
+ Converted GSS SPSS data file to .rda (4/15)
+ Subsetted original data frame to variables of interest (4/15)
+ Created project file (4/15)
+ Examined patterns of missing data; researched survey response structures, split by ballot (4/23)
+ Plotted visual cross-tabulations (4/23)
+ Logistic regression (4/30)
+ Decision trees (4/30)
+ Random forests (5/7)
+ Clustering (5/7)
+ Final PDF document (5/8)

## Contributors
+ Celeste C.
+ Sarah U.
