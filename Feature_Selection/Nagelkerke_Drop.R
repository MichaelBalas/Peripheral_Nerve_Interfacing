# IBBME 
library(fmsb)

features = read.csv("SS/Static/tri_16_features.csv", header=TRUE)
response = read.csv("Response.csv", header=TRUE)

## --- GENERALIZED LINEAR MODELS ---
fit_dead = glm(formula = as.factor(response$Label) ~ ., family = binomial, data=features)

summary(fit_dead)

predictors = names(features)
x = NULL
## --- NAGELKERKE R^2 RANKING --- ##
nagelkerke_ranking <- function(model, predictors){
  total_nagel = NagelkerkeR2(model)[["R2"]]
  nagel_decrease = numeric()
  for (i in 0:15){
    for (j in 0:6) {
      index = 1+(i + 16*j)
      x = c(x, predictors[index])
    }
    string = paste(paste("~ . -", x[1], sep=" "), x[2], x[3], x[4], x[5], x[6], x[7], sep=" - ")
    rhs_formula = as.formula(string)
    excluded_var = NagelkerkeR2(update(model, rhs_formula))[["R2"]]
    delta = total_nagel - excluded_var
    nagel_decrease = c(nagel_decrease, (delta/total_nagel)*100)
    x = NULL
  }
  names(nagel_decrease) <- c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16)
  par(mar=c(5,13,2,2),lab=c(20,10,7))
  barplot(sort(nagel_decrease), horiz=TRUE, xlim=c(0,max(nagel_decrease)+2),las=1,
          xlab=expression(paste("Percent Decrease in R"^"2")))
  return(nagel_decrease)
}
x = NULL
nagelkerke_ranking(fit_dead, predictors)
