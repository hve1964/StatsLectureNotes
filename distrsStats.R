################################################################################
### Plots of distributions for Foundations of Statistics lecture notes
### Di, 09.07.2019
###
#################################################################################

graphics.off()
rm(list = ls())

# (i) discrete uniform distribution
library("extraDistr")
xmin <- 1
xmax <- 6

x = seq( xmin , xmax )

y1 = ddunif( x , xmin , xmax )
#y2 = dpois(x, 1.0)
#y3 = dpois(x, 3.0)
#y4 = dpois(x, 5.5)

plot( x , y1 ,
      type = "b" ,
      pch = 16 ,
      lwd = 1.5 ,
      xlim = c(xmin, xmax) ,
      ylim = c(0, 0.20) ,
      xlab = "x" ,
      ylab = "Discreteuniformprob(x)" )
#points(x, y2, type = "b", pch = 17, lwd = 1.5)
#points(x, y3, type = "b", pch = 21, lwd = 1.5)
#points(x, y4, type = "b", pch = 22, lwd = 1.5)

legend( "bottomright" ,
        legend = c("L(6)") , #"Pois(1)", "Pois(3)", "Pois(11/2)"),
        pch = c(16) , #17, 21, 22),
        lwd = c(1.5) , #1.5, 1.5, 1.5),
        bty = "n" )
mtext("Discrete uniform distribution")
rm(list = ls())


# (ii) Bernoulli distribution
probSuc <- 1/3

x = seq( 0 , 1 )

y1 = dbinom( x , 1 , probSuc )
#y2 = dpois(x, 1.0)
#y3 = dpois(x, 3.0)
#y4 = dpois(x, 5.5)

plot( x , y1 ,
      type = "h" ,
      #pch = 16 ,
      lwd = 1.5 ,
      xlim = c(0, 1) ,
      ylim = c(0, 4/5) ,
      xaxt = "n" ,
      xlab = "x" ,
      ylab = "Bernoulliprob(x)" )
axis( 1 , at = c(0, 1) , labels = c("0", "1") )
#points(x, y2, type = "b", pch = 17, lwd = 1.5)
#points(x, y3, type = "b", pch = 21, lwd = 1.5)
#points(x, y4, type = "b", pch = 22, lwd = 1.5)

legend( "topright" ,
        legend = c("B(1; 1/3)") , #"Pois(1)", "Pois(3)", "Pois(11/2)"),
        #pch = c(16) , #17, 21, 22),
        lwd = c(1.5) , #1.5, 1.5, 1.5),
        bty = "n" )
mtext("Bernoulli distribution")
rm(list = ls())


# (iii) Binomial distribution
probSuc <- 3/5
nrep <- 10

x = seq( 0 , nrep )

y1 = dbinom( x , nrep , probSuc )
#y2 = dpois(x, 1.0)
#y3 = dpois(x, 3.0)
#y4 = dpois(x, 5.5)

plot( x , y1 ,
      type = "b" ,
      pch = 16 ,
      lwd = 1.5 ,
      xlim = c(0, nrep) ,
      ylim = c(0, 3/10) ,
      xlab = "x" ,
      ylab = "Binomialprob(x)" )
#points(x, y2, type = "b", pch = 17, lwd = 1.5)
#points(x, y3, type = "b", pch = 21, lwd = 1.5)
#points(x, y4, type = "b", pch = 22, lwd = 1.5)

legend( "topright" ,
        legend = c("B(10; 3/5)") , #"Pois(1)", "Pois(3)", "Pois(11/2)"),
        pch = c(16) , #17, 21, 22),
        lwd = c(1.5) , #1.5, 1.5, 1.5),
        bty = "n" )
mtext("Binomial distribution")
rm(list = ls())


# (iv) hypergeometric distribution
Ntotal <- 49
Mblack <- 6
nDrawn <- 6

x = seq( 0 , nDrawn )

y1 = dhyper( x , Mblack , Ntotal - Mblack , nDrawn )
#y2 = dpois(x, 1.0)
#y3 = dpois(x, 3.0)
#y4 = dpois(x, 5.5)

plot( x , y1 ,
      type = "b" ,
      pch = 16 ,
      lwd = 1.5 ,
      xlim = c(0, nDrawn) ,
      #ylim = c(0, 0.5) ,
      xlab = "x" ,
      ylab = "Hypergeometricprob(x)" )
#points(x, y2, type = "b", pch = 17, lwd = 1.5)
#points(x, y3, type = "b", pch = 21, lwd = 1.5)
#points(x, y4, type = "b", pch = 22, lwd = 1.5)

legend( "topright" ,
        legend = c("H(6, 6, 49)") , #"Pois(1)", "Pois(3)", "Pois(11/2)"),
        pch = c(16) , #17, 21, 22),
        lwd = c(1.5) , #1.5, 1.5, 1.5),
        bty = "n" )
mtext("Hypergeometric distribution")
rm(list = ls())


# (v) Poisson distribution
lambda <- 3/2

x = seq(0, 10)

y1 = dpois(x, lambda)
#y2 = dpois(x, 1.0)
#y3 = dpois(x, 3.0)
#y4 = dpois(x, 5.5)

plot( x , y1 ,
     type = "b" ,
     pch = 16 ,
     lwd = 1.5 ,
     xlim = c(0, 10) ,
     xlab = "x" ,
     ylab = "Poissonprob(x)" )
#points(x, y2, type = "b", pch = 17, lwd = 1.5)
#points(x, y3, type = "b", pch = 21, lwd = 1.5)
#points(x, y4, type = "b", pch = 22, lwd = 1.5)

legend( "topright" ,
        legend = c("Pois(3/2)") , #"Pois(1)", "Pois(3)", "Pois(11/2)"),
        pch = c(16) , #17, 21, 22),
        lwd = c(1.5) , #1.5, 1.5, 1.5),
        bty = "n" )
mtext("Poisson distribution")
rm(list = ls())


# (vi) continuous uniform distribution
curve( dunif(x , min = 2 , max = 3) , from = -0.2 , to = 5.2 , add = FALSE ,
       xlab = "x" , ylab = "Uniformpdf(x)" , lty = 1 , lwd = 1.5 , n = 1001 )
curve( dunif(x , min = 3/2 , max = 7/2) , add = TRUE , lty = 2 , lwd = 1.5 , n = 1001 )
curve( dunif(x , min = 1 , max = 4) , add = TRUE , lty = 3 , lwd = 1.5 , n = 1001 )
curve( dunif(x , min = 0 , max = 5) , add = TRUE , lty = 4 , lwd = 1.5 , n = 1001 )

legend( "topright" , legend = c("U(2; 3)", "U(3/2; 7/2)", "U(1; 4)", "U(0; 5)") ,
        lty = c(1,2,3,4) , lwd = c(1.5, 1.5, 1.5, 1.5) , bty = "n" )
mtext("Continuous uniform distributions")
rm(list = ls())


# (vii) Gauss distributions (1)
curve( dnorm(x, mean = -2, sd = 1/2) , from = -4 , to = 4 , add = FALSE ,
      xlab = "x" , ylab = "Npdf(x)" , lty = 1 , lwd = 1.5 , n = 1001 )
curve( dnorm(x, mean = 0, sd = 1/2) , add = TRUE , lty = 2 , lwd = 1.5 , n = 1001 )
curve( dnorm(x, mean = 1, sd = 1/2) , add = TRUE , lty = 3 , lwd = 1.5 , n = 1001 )
curve( dnorm(x, mean = 3/2, sd = 1/2) , add = TRUE , lty = 4 , lwd = 1.5 , n = 1001 )

legend( "topright" , legend = c("N(-2; 1/4)", "N(0; 1/4)",
                                "N(1; 1/4)", "N(3/2; 1/4)") ,
       lty = c(1,2,3,4) , lwd = c(1.5, 1.5, 1.5, 1.5) , bty = "n" )
mtext("Gauß distributions (1)")


# (viii) Gauss distributions (2)
curve( dnorm(x, mean = 0, sd = 1/2) , from = -4 , to = 4 , add = FALSE ,
       xlab = "x" , ylab = "Npdf(x)" , lty = 1 , lwd = 1.5 , n = 1001 )
curve( dnorm(x, mean = 0, sd = 1) , add = TRUE , lty = 2 , lwd = 1.5 , n = 1001 )
curve( dnorm(x, mean = 0, sd = sqrt(2)) , add = TRUE , lty = 3 , lwd = 1.5 , n = 1001 )
curve( dnorm(x, mean = 0, sd = 2) , add = TRUE , lty = 4 , lwd = 1.5 , n = 1001 )

legend( "topright" , legend = c("N(0; 1/4)", "N(0; 1)",
                                "N(0; 2)", "N(0; 4)") ,
        lty = c(1,2,3,4) , lwd = c(1.5, 1.5, 1.5,1.5) , bty = "n" )
mtext("Gauß distributions (2)")


# (viii) standard normal distribution
curve( dnorm(x, mean = 0, sd = 1) , from = -6 , to = 6 , add = FALSE ,
       xlab = expression(z) , ylab = expression(phi(z)) , lty = 1 , lwd = 1.5 , n = 1001 )

legend( "topright" , legend = c("N(0; 1)") ,
        lty = c(1) , lwd = c(1.5) , bty = "n" )
mtext("Standard normal distribution")


# (ix) chi-squared-distributions
curve( dchisq(x, df = 3) , from = 0 , to = 50 , add = FALSE ,
       xlab = "x" , ylab = "chi2pdf(x)" , lty = 1 , lwd = 1.5 , n = 1001 )
curve( dchisq(x, df = 5) , add = TRUE , lty = 2 , lwd = 1.5 , n = 1001 )
curve( dchisq(x, df = 10) , add = TRUE , lty = 3 , lwd = 1.5 , n = 1001 )
curve( dchisq(x, df = 30) , add = TRUE , lty = 4 , lwd = 1.5 , n = 1001 )

legend( "topright" , legend = c("chi2(3)", "chi2(5)", "chi2(10)", "chi2(30)") ,
        lty = c(1,2,3,4) , lwd = c(1.5, 1.5, 1.5,1.5) , bty = "n" )
mtext("chi-squared-distributions")


# (x) t-distributions
curve( dt(x, df = 2) , from = -6 , to = 6 , add = FALSE ,
       ylim = c(0.00, 0.40) ,
       xlab = "x" , ylab = "tpdf(x)" , lty = 1 , lwd = 1.5 , n = 1001 )
curve( dt(x, df = 3) , add = TRUE , lty = 2 , lwd = 1.5 , n = 1001 )
curve( dt(x, df = 5) , add = TRUE , lty = 3 , lwd = 1.5 , n = 1001 )
curve( dt(x, df = 50) , add = TRUE , lty = 4 , lwd = 1.5 , n = 1001 )

legend( "topright" , legend = c("t(2)", "t(3)", "t(5)", "t(50)") ,
        lty = c(1,2,3,4) , lwd = c(1.5, 1.5, 1.5,1.5) , bty = "n" )
mtext("t-distributions")


# (xi) F-distributions
curve( df(x, df1 = 80, df2 = 40) , from = 0 , to = 6 , add = FALSE ,
       xlab = "x" , ylab = "Fpdf(x)" , lty = 1 , lwd = 1.5 , n = 1001 )
curve( df(x, df1 = 40, df2 = 20) , add = TRUE , lty = 2 , lwd = 1.5 , n = 1001 )
curve( df(x, df1 = 6, df2 = 10) , add = TRUE , lty = 3 , lwd = 1.5 , n = 1001 )
curve( df(x, df1 = 3, df2 = 5) , add = TRUE , lty = 4 , lwd = 1.5 , n = 1001 )

legend( "topright" , legend = c("F(80, 40)", "F(40, 20)",
                                "F(6, 10)", "F(3, 5)") ,
        lty = c(1,2,3,4) , lwd = c(1.5, 1.5, 1.5,1.5) , bty = "n" )
mtext("F-distributions")


# (xii) Pareto distributions
library(extraDistr)
curve( dpareto(x, a = 1/3, b = 1) , from = 1 , to = 8 , add = FALSE ,
       ylim = c(0.0, 2.5) , xlab = "x" , ylab = "Paretopdf(x)" , lty = 1 ,
       lwd = 1.5 , n = 1001 )
curve( dpareto(x, a = 1/2, b = 1) , add = TRUE , lty = 2 ,
       lwd = 1.5 , n = 1001 )
curve( dpareto(x, a = (log(5)/log(4)), b = 1) , add = TRUE ,
       lty = 3 , lwd = 1.5 , n = 1001 )
curve( dpareto(x, a = 5/2, b = 1) , add = TRUE , lty = 4 ,
       lwd = 1.5 , n = 1001 )

legend( "topright" , legend = c("Par(1/3, 1)", "Par(1/2, 1)",
                                "Par(ln(5)/ln(4), 1)",
                                "Par(5/2, 1)") ,
        lty = c(1,2,3,4) , lwd = c(1.5, 1.5, 1.5,1.5) , bty = "n" )
mtext("Pareto distributions")


# (xiii) exponential distributions
curve( dexp(x, rate = 1/4) , from = 0 , to = 5 , add = FALSE ,
       ylim = c(0.0, 2.0) ,
       xlab = "x" , ylab = "Exponentialpdf(x)" , lty = 1 ,
       lwd = 1.5 , n = 1001 )
curve( dexp(x, rate = 1/2) , add = TRUE , lty = 2 ,
       lwd = 1.5 , n = 1001 )
curve( dexp(x, rate = 1) , add = TRUE ,
       lty = 3 , lwd = 1.5 , n = 1001 )
curve( dexp(x, rate = 2) , add = TRUE , lty = 4 ,
       lwd = 1.5 , n = 1001 )

legend( "topright" , legend = c("Ex(1/4)", "Ex(1/2)", "Ex(1)", "Ex(2)") ,
        lty = c(1,2,3,4) , lwd = c(1.5, 1.5, 1.5,1.5) , bty = "n" )
mtext("Exponential distributions")


# (xiv) logistic distributions
curve( dlogis(x, location = -2, scale = 1/4) , from = -6 , to = 8 ,
       add = FALSE ,
       #ylim = c(0.0, 2.0) ,
       xlab = "x" , ylab = "Logisticpdf(x)" , lty = 1 ,
       lwd = 1.5 , n = 1001 )
curve( dlogis(x, location = -1, scale = 1/2) , add = TRUE , lty = 2 ,
       lwd = 1.5 , n = 1001 )
curve( dlogis(x, location = 0, scale = 1) , add = TRUE ,
       lty = 3 , lwd = 1.5 , n = 1001 )
curve( dlogis(x, location = 1, scale = 2) , add = TRUE , lty = 4 ,
       lwd = 1.5 , n = 1001 )

legend( "topright" , legend = c("Lo(-2; 1/4)", "Lo(-1; 1/2)",
                                "Lo(0; 1)", "Lo(1; 2)") ,
        lty = c(1,2,3,4) , lwd = c(1.5, 1.5, 1.5,1.5) , bty = "n" )
mtext("Logistic distributions")


# (xv) special hyperbolic distribution
curve( (1/log(2))*(1/(1+x)) , from = 0 , to = 1 ,
       add = FALSE ,
       ylim = c(0.0, 1.5) ,
       xlab = "x" , ylab = "sHyppdf(x)" , lty = 1 ,
       lwd = 1.5 , n = 1001 )

legend( "topright" , legend = c("sHyp") ,
        lty = c(1) , lwd = c(1.5) , bty = "n" )
mtext("Special hyperbolic distribution")


# (xvi) Cauchy distributions
curve( dcauchy(x, location = -2, scale = 2) , from = -8 , to = 6 ,
       add = FALSE ,
       ylim = c(0.0, 0.5) ,
       xlab = "x" , ylab = "Cauchypdf(x)" , lty = 1 ,
       lwd = 1.5 , n = 1001 )
curve( dcauchy(x, location = -1, scale = 3/2) , add = TRUE , lty = 2 ,
       lwd = 1.5 , n = 1001 )
curve( dcauchy(x, location = 0, scale = 1) , add = TRUE ,
       lty = 3 , lwd = 1.5 , n = 1001 )
curve( dcauchy(x, location = 1, scale = 3/4) , add = TRUE , lty = 4 ,
       lwd = 1.5 , n = 1001 )

legend( "topright" , legend = c("Ca(-2; 2)", "Ca(-1; 3/2)",
                                "Ca(0; 1)", "Ca(1; 3/4)") ,
        lty = c(1,2,3,4) , lwd = c(1.5, 1.5, 1.5,1.5) , bty = "n" )
mtext("Cauchy distributions")


################################################################################
################################################################################