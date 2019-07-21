# ecoli4 ------------------------------------------------------------------

ecoli4 <- read.keel("files/keel/imbalance/ratio2/ecoli4.dat")
change <- colnames(ecoli4)[colnames(ecoli4) != "Class"]
ecoli4 <- ecoli4 %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Class)
ecoli4 <- ecoli4[, c("class", setdiff(colnames(ecoli4), "class"))]
ecoli4 <- ecoli4 %>% mutate(class = fct_relevel(class, "positive", "negative"))
save(ecoli4, file = "data/ecoli4.RData")

# ecoli_0_1_4_6_vs_5 ---------------------------------------------------

ecoli_0_1_4_6_vs_5 <- read.keel("files/keel/imbalance/ratio2/ecoli-0-1-4-6_vs_5.dat")
change <- colnames(ecoli_0_1_4_6_vs_5)[colnames(ecoli_0_1_4_6_vs_5) != "class"]
ecoli_0_1_4_6_vs_5 <- ecoli_0_1_4_6_vs_5 %>% mutate_at(change, function(x) {as.numeric(as.character(x))})
ecoli_0_1_4_6_vs_5 <- ecoli_0_1_4_6_vs_5[, c("class", setdiff(colnames(ecoli_0_1_4_6_vs_5), "class"))]
ecoli_0_1_4_6_vs_5 <- ecoli_0_1_4_6_vs_5 %>% mutate(class = fct_relevel(class, "positive", "negative"))
save(ecoli_0_1_4_6_vs_5, file = "data/ecoli_0_1_4_6_vs_5.RData")

# ecoli_0_1_4_7_vs_2_3_5_6 ---------------------------------------------------

ecoli_0_1_4_7_vs_2_3_5_6<- read.keel("files/keel/imbalance/ratio2/ecoli-0-1-4-7_vs_2-3-5-6.dat")
change <- colnames(ecoli_0_1_4_7_vs_2_3_5_6)[colnames(ecoli_0_1_4_7_vs_2_3_5_6) != "class"]
ecoli_0_1_4_7_vs_2_3_5_6<- ecoli_0_1_4_7_vs_2_3_5_6 %>% mutate_at(change, function(x) {as.numeric(as.character(x))})
ecoli_0_1_4_7_vs_2_3_5_6 <- ecoli_0_1_4_7_vs_2_3_5_6[, c("class", setdiff(colnames(ecoli_0_1_4_7_vs_2_3_5_6), "class"))]
ecoli_0_1_4_7_vs_2_3_5_6 <- ecoli_0_1_4_7_vs_2_3_5_6 %>% mutate(class = fct_relevel(class, "positive", "negative"))
save(ecoli_0_1_4_7_vs_2_3_5_6, file = "data/ecoli_0_1_4_7_vs_2_3_5_6.RData")

# ecoli_0_1_4_7_vs_5_6 --------------------------------------------------------

ecoli_0_1_4_7_vs_5_6 <- read.keel("files/keel/imbalance/ratio2/ecoli-0-1-4-7_vs_5-6.dat")
change <- colnames(ecoli_0_1_4_7_vs_5_6)[colnames(ecoli_0_1_4_7_vs_5_6) != "class"]
ecoli_0_1_4_7_vs_5_6 <- ecoli_0_1_4_7_vs_5_6 %>% mutate_at(change, function(x) {as.numeric(as.character(x))})
ecoli_0_1_4_7_vs_5_6 <- ecoli_0_1_4_7_vs_5_6[, c("class", setdiff(colnames(ecoli_0_1_4_7_vs_5_6), "class"))]
ecoli_0_1_4_7_vs_5_6 <- ecoli_0_1_4_7_vs_5_6 %>% mutate(class = fct_relevel(class, "positive", "negative"))
save(ecoli_0_1_4_7_vs_5_6, file = "data/ecoli_0_1_4_7_vs_5_6.RData")

# ecoli_0_6_7_vs_5 --------------------------------------------------------

ecoli_0_6_7_vs_5 <- read.keel("files/keel/imbalance/ratio2/ecoli-0-6-7_vs_5.dat")
change <- colnames(ecoli_0_6_7_vs_5)[colnames(ecoli_0_6_7_vs_5) != "class"]
ecoli_0_6_7_vs_5 <- ecoli_0_6_7_vs_5 %>% mutate_at(change, function(x) {as.numeric(as.character(x))})
ecoli_0_6_7_vs_5 <- ecoli_0_6_7_vs_5[, c("class", setdiff(colnames(ecoli_0_6_7_vs_5), "class"))]
ecoli_0_6_7_vs_5 <- ecoli_0_6_7_vs_5 %>% mutate(class = fct_relevel(class, "positive", "negative"))
save(ecoli_0_6_7_vs_5, file = "data/ecoli_0_6_7_vs_5.RData")


# dermatology-6 -----------------------------------------------------------

dermatology_6 <- read.keel("files/keel/imbalance/ratio2/dermatology-6.dat")
dermatology_6 <- dermatology_6 %>% as_tibble() %>% rename(class = Class) %>% mutate(Age = as.numeric(as.character(Age)))
dermatology_6 <- dermatology_6[, c("class", setdiff(colnames(dermatology_6), "class"))]

change <- colnames(dermatology_6)[colnames(dermatology_6) != "class"]
dermatology_6n <- dermatology_6 %>% mutate_at(change, function(x) {as.numeric(as.character(x))})

save(dermatology_6, dermatology_6n, file = "data/dermatology_6.RData")

# glass2 ------------------------------------------------------------------

glass2 <- read.keel("files/keel/imbalance/ratio2/glass2.dat")
change <- colnames(glass2)[colnames(glass2) != "Class"]
glass2 <- glass2 %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Class)
glass2 <- glass2[, c("class", setdiff(colnames(glass2), "class"))]
glass2 <- glass2 %>% mutate(class = fct_relevel(class, "positive", "negative"))
save(glass2, file = "data/glass2.RData")

# glass4 ------------------------------------------------------------------

glass4 <- read.keel("files/keel/imbalance/ratio2/glass4.dat")
change <- colnames(glass4)[colnames(glass4) != "Class"]
glass4 <- glass4 %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Class)
glass4 <- glass4[, c("class", setdiff(colnames(glass4), "class"))]
glass4 <- glass4 %>% mutate(class = fct_relevel(class, "positive", "negative"))
save(glass4, file = "data/glass4.RData")

# glass5 ------------------------------------------------------------------

glass5 <- read.keel("files/keel/imbalance/ratio2/glass5.dat")
change <- colnames(glass5)[colnames(glass5) != "Class"]
glass5 <- glass5 %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Class)
glass5 <- glass5[, c("class", setdiff(colnames(glass5), "class"))]
glass5 <- glass5 %>% mutate(class = fct_relevel(class, "positive", "negative"))
save(glass5, file = "data/glass5.RData")

# yeast6 ------------------------------------------------------------------

yeast6 <- read.keel("files/keel/imbalance/ratio2/yeast6.dat")
change <- colnames(yeast6)[colnames(yeast6) != "Class"]
yeast6 <- yeast6 %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Class)
yeast6 <- yeast6[, c("class", setdiff(colnames(yeast6), "class"))]
yeast6 <- yeast6 %>% mutate(class = fct_relevel(class, "positive", "negative"))
save(yeast6, file = "data/yeast6.RData")

# yeast_0_3_5_9_vs_7_8 ---------------------------------------------------

yeast_0_3_5_9_vs_7_8 <- read.keel("files/keel/imbalance/ratio2/yeast-0-3-5-9_vs_7-8.dat")
change <- colnames(yeast_0_3_5_9_vs_7_8)[colnames(yeast_0_3_5_9_vs_7_8) != "class"]
yeast_0_3_5_9_vs_7_8 <- yeast_0_3_5_9_vs_7_8 %>% mutate_at(change, function(x) {as.numeric(as.character(x))})
yeast_0_3_5_9_vs_7_8 <- yeast_0_3_5_9_vs_7_8[, c("class", setdiff(colnames(yeast_0_3_5_9_vs_7_8), "class"))]
yeast_0_3_5_9_vs_7_8 <- yeast_0_3_5_9_vs_7_8 %>% mutate(class = fct_relevel(class, "positive", "negative"))
save(yeast_0_3_5_9_vs_7_8, file = "data/yeast_0_3_5_9_vs_7_8.RData")
