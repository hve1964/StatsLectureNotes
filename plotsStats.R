################################################################################
## Plots for Foundations of Statistics lecture notes
## Do, 27.06.2019
##
## library(datasets)
################################################################################

graphics.off()
rm(list = ls())

library( help = "datasets" )

# (i) pie chart
data("infert")
pie( table( infert$education ) ,
     radius = 0.8 )#, labels = names(infert$education) )
mtext("pie chart")
rm(infert)


# (ii) bar chart
data("esoph")
barplot( prop.table( table( esoph$agegp ) ) ,
         ylim = c( 0.0, 0.2 ) ,
         xlab = "age group [yr]" ,
         ylab = "relative frequency" )
mtext("bar chart")
rm(esoph)


# (iii) histogram
data("quakes")
hist( quakes$mag ,
      breaks = 20 ,
      freq = FALSE ,
      main = NULL ,
      xlab = "magnitude [1]" ,
      ylab = "relative frequency density" )
mtext("histogram")


# (iv) empirical cumulative distribution function
plot( ecdf(quakes$mag) ,
      main = NULL ,
      xlab = "magnitude [1]" ,
      ylab = "relative frequency density" )
mtext("empirical cumulative distribution function")


# (v) 1-D box plot
boxplot( quakes$mag ,
         ylab = "magnitude [1]" )
mtext("box plot")
rm(quakes)


# (vi) parallel box plots
data("PlantGrowth")
boxplot( PlantGrowth$weight ~ PlantGrowth$group ,
         ylab = "mass [g]" ,
         xaxt = "n" )
axis( 1 , at = c(1 , 2 , 3 ) ,
      labels = c( "control" , "treatment 1" , "treatment 2" ) )
mtext("parallel box plots")
rm(PlantGrowth)


# (vii) scatter plot
data("airquality")
plot( airquality$Temp , airquality$Ozone ,
      xlab = "temperature [°F]" ,
      ylab = "ozone [ppb]" )
mtext("scatter plot")

cor( airquality$Temp , airquality$Ozone , use = "complete.obs" )
linReg <- lm( airquality$Temp ~ airquality$Ozone )
summary(linReg)
plot( airquality$Temp , airquality$Ozone ,
      xlab = "temperature [°F]" ,
      ylab = "ozone [ppb]" )
mtext("least squares simple linear regression")
abline(linReg)
rm(airquality)


################################################################################
################################################################################