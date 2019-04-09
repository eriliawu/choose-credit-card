### choose a credit card

# premise
# dining: $20-30/person*week --> $160-240/month
# groceries: 800-1200/month

# cards
# AMEX blue cash preferred
# 6% groceries (after $6000, to 1%), all others 1%
# $95 annual fee
# $250 bonus, spend $1000 in first 3 months

# AMEX blue cash everyday
# 3% groceries (after $6000, to 1%), all others 1%
# $200 bonus, spend $1000 in first 3 months

# capital one savor rewards
# 4% dining, 2% geocery
# $95 annual fee (waived for 1st year)
# $500 bonus, spend $3000 in 3 months
# no foreign transaction fee

# capital one savorone rewards
# 3% dining, 2% geocery
# $150 bonus, spend $500 in 3 months
# no foreign transaction fee

### uniform distribution ----
din <- runif(1000, min=160, max=240)
groc <- runif(1000, min=800, max=1200)
#year <- seq(from=2, to=10, by=1)
amex.prefer <- (groc*12-6000)*0.01+6000*0.06+din*12*0.01-95
amex.ed <- (groc*12-6000)*0.01+6000*0.03+din*12*0.01
cap.savor <- groc*12*0.02+din*12*0.04-95
cap.so <- groc*12*0.02+din*12*0.03

par(mfrow=c(2,2))
hist(amex.prefer, main="AMEX-prefer", xlab="", ylab="Freq.", breaks=100)
abline(v=median(amex.prefer),col="red")
hist(amex.ed, main="AMEX-everyday", xlab="", ylab="", breaks=100)
abline(v=median(amex.ed),col="red")
hist(cap.savor, main="CapitalOne-savor", xlab="Cash back ($)", ylab="Freq.", breaks=100)
abline(v=median(cap.savor),col="red")
hist(cap.so, main="CapitalOne-savorOne", xlab="Cash back ($)", ylab="", breaks=100)
abline(v=median(cap.so),col="red")
par(mfrow=c(1,1))

### normal distribution ----
din <- rnorm(1000, mean=1000, sd=90)
groc <- rnorm(1000, mean=200, sd=15)
hist(din, breaks = 100) #sanity check
hist(groc, breaks = 100) #sanity check

amex.prefer <- (groc*12-6000)*0.01+6000*0.06+din*12*0.01-95
amex.ed <- (groc*12-6000)*0.01+6000*0.03+din*12*0.01
cap.savor <- groc*12*0.02+din*12*0.04-95
cap.so <- groc*12*0.02+din*12*0.03

par(mfrow=c(2,2))
hist(amex.prefer, main="AMEX-prefer", xlab="", ylab="Freq.", breaks=100)
abline(v=median(amex.prefer),col="red")
hist(amex.ed, main="AMEX-everyday", xlab="", ylab="", breaks=100)
abline(v=median(amex.ed),col="red")
hist(cap.savor, main="CapitalOne-savor", xlab="Cash back ($)", ylab="Freq.", breaks=100)
abline(v=median(cap.savor),col="red")
hist(cap.so, main="CapitalOne-savorOne", xlab="Cash back ($)", ylab="", breaks=100)
abline(v=median(cap.so),col="red")
par(mfrow=c(1,1))

      
      