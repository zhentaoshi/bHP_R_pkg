# Boosted Hodrick-Prescott Filter

This is an R package for Peter Phillips and Zhentao Shi (2020): ["Boosting the Hodrick-Prescott Filter"](https://arxiv.org/abs/1905.00175). 

The method is implemented by the function `BoostedHP()`. 




![image](https://github.com/chenyang45/BoostedHP/blob/master/ADF_bHP_ani.gif)


#### Installation

A preliminary R package can be installed by running in `R`
```
install.packages("devtools")
devtools::install_github("chenyang45/BoostedHP/BoostedHP")
library("BoostedHP")
```



To do: 2020-08-10

When the branch of `develop` in merged into `master`, update the name of the package from `BoostedHP` to `bHP`.