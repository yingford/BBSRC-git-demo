# R code: this code 

# read Lewandowsky's dataset into RStudio
df=read.table('http://data.bris.ac.uk/datasets/swyt56qr4vaj17op9cw3sag7d/LskyetalPLOSONE.csv',
              header=TRUE,sep=',')
head(df)

max_age=120
min_age=18

# clean data
df=subset(df,age>min_age&age<max_age)

# sanity check with smoke test

stopifnot(max(df$age)<max_age)
stopifnot(min(df$age)>min_age)

# run linear fit: lm
lm.result=lm(conspiracist_avg~age,data=df)
summary(lm.result)

plot(df$age,df$conspiracist_avg)

