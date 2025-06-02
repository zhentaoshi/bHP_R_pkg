# This is an example file for demonstration

# if this package hasn't been installed in your local IDE
# use devtools::install_github("zhentaoshi/bHP_R_pkg") 
library(bHP) #import this package "bHP"
data(IRE) # load the data 'IRE'
lam <- 100 # tuning parameter for the annual data

# raw HP filter
bx_HP <- BoostedHP(IRE, lambda = lam, iter= FALSE)
# stopping stands for the condition of the terminal of iteration
# by BIC
bx_BIC <- BoostedHP(IRE, lambda = lam, iter= TRUE, stopping = "BIC")

# by ADF
bx_ADF <- BoostedHP(IRE, lambda = lam, iter= TRUE, stopping = "adf")
# If stopping = "nonstop",
# Iterated HP filter until Max_Iter and keep the path of BIC.

bx_nonstop <- BoostedHP(IRE, lambda = lam, iter= TRUE, stopping = "nonstop")

# plot(bx_ADF$cycle)
# plot(bx_HP$cycle)
# plot(bx_nonstop$cycle)
# plot(bx_BIC$cycle)

#Dynamic Demonstration

plot(bx_ADF, iteration_location = "upright",interval_t = 0.8) 

# plot(bx_ADF, iteration_location = c(30,12)) 

# plot(bx_BIC, interval_t = 0.8 ) 

# plot(bx_nonstop, cex_legend = 2, cex_text = 3,interval_t =0.8) 