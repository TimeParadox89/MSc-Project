setwd("/Users/erennio/Desktop/Portsmouth University/Thesis Code/Osteoporosis Version/3. Data Evaluation/")
tstat <- read.csv(file="../Data/T-test.csv", header=TRUE, sep=",")

print(head(tstat))
print(nrow(tstat))
print(tstat[['p.value']])
tstat['p_adjust'] <- p.adjust(tstat[['p.value']], method = "bonferroni", n = nrow(tstat))

write.csv(tstat, file = "../Data/T-test_(p_adjust).csv", row.names = FALSE)