#1a Load libraries
library(arules)
library(arulesViz)
library(datasets)
# Load data set
data(Groceries)
#1b)Apply apriori algorithm and mine the frequent item sets and association rules. Use
#the default values of minimum support and minimum confidence.
rules <- apriori(Groceries,parameter = list(supp = 0.001, conf = 0.8))
options(digits=2)
#1c)Displays the first 10 strong association rules.
inspect(rules[1:10])
# 1d)Plot the 20 items with highest item frequency.
itemFrequencyPlot(Groceries,topN=20,type="absolute")
#Continue the same with minimum support of 20% and the minimum confidence of 50%.
new_rules <- apriori(Groceries,parameter = list(supp = 0.02, conf = 0.5))
options(digits=2)
#1c)Displays the first 10 strong association rules.
inspect(new_rules[1:1])
