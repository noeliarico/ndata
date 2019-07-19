# ecoli4 ------------------------------------------------------------------

imb_ecoli4 <- read.keel("files/keel/imbalance/ratio2/ecoli4.dat")
change <- colnames(imb_ecoli4)[colnames(imb_ecoli4) != "Class"]
imb_ecoli4 <- imb_ecoli4 %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Class)
imb_ecoli4 <- imb_ecoli4[, c("class", setdiff(colnames(imb_ecoli4), "class"))]
save(imb_ecoli4, file = "data/imb_ecoli4.RData")

# ecoli_0_1_4_6_vs_5 ---------------------------------------------------

imb_ecoli_0_1_4_6_vs_5 <- read.keel("files/keel/imbalance/ratio2/ecoli-0-1-4-6_vs_5.dat")
change <- colnames(imb_ecoli_0_1_4_6_vs_5)[colnames(imb_ecoli_0_1_4_6_vs_5) != "class"]
imb_ecoli_0_1_4_6_vs_5 <- imb_ecoli_0_1_4_6_vs_5 %>% mutate_at(change, function(x) {as.numeric(as.character(x))})
imb_ecoli_0_1_4_6_vs_5 <- imb_ecoli_0_1_4_6_vs_5[, c("class", setdiff(colnames(imb_ecoli_0_1_4_6_vs_5), "class"))]
save(imb_ecoli_0_1_4_6_vs_5, file = "data/imb_ecoli_0_1_4_6_vs_5.RData")

# ecoli_0_1_4_7_vs_2_3_5_6 ---------------------------------------------------

imb_ecoli_0_1_4_7_vs_2_3_5_6<- read.keel("files/keel/imbalance/ratio2/ecoli-0-1-4-7_vs_2-3-5-6.dat")
change <- colnames(imb_ecoli_0_1_4_7_vs_2_3_5_6)[colnames(imb_ecoli_0_1_4_7_vs_2_3_5_6) != "class"]
imb_ecoli_0_1_4_7_vs_2_3_5_6<- imb_ecoli_0_1_4_7_vs_2_3_5_6 %>% mutate_at(change, function(x) {as.numeric(as.character(x))})
imb_ecoli_0_1_4_7_vs_2_3_5_6 <- imb_ecoli_0_1_4_7_vs_2_3_5_6[, c("class", setdiff(colnames(imb_ecoli_0_1_4_7_vs_2_3_5_6), "class"))]
save(imb_ecoli_0_1_4_7_vs_2_3_5_6, file = "data/imb_ecoli_0_1_4_7_vs_2_3_5_6.RData")

# ecoli_0_1_4_7_vs_5_6 --------------------------------------------------------

imb_ecoli_0_1_4_7_vs_5_6 <- read.keel("files/keel/imbalance/ratio2/ecoli-0-1-4-7_vs_5-6.dat")
change <- colnames(imb_ecoli_0_1_4_7_vs_5_6)[colnames(imb_ecoli_0_1_4_7_vs_5_6) != "class"]
imb_ecoli_0_1_4_7_vs_5_6 <- imb_ecoli_0_1_4_7_vs_5_6 %>% mutate_at(change, function(x) {as.numeric(as.character(x))})
imb_ecoli_0_1_4_7_vs_5_6 <- imb_ecoli_0_1_4_7_vs_5_6[, c("class", setdiff(colnames(imb_ecoli_0_1_4_7_vs_5_6), "class"))]
save(imb_ecoli_0_1_4_7_vs_5_6, file = "data/imb_ecoli_0_1_4_7_vs_5_6.RData")

# ecoli_0_6_7_vs_5 --------------------------------------------------------

imb_ecoli_0_6_7_vs_5 <- read.keel("files/keel/imbalance/ratio2/ecoli-0-6-7_vs_5.dat")
change <- colnames(imb_ecoli_0_6_7_vs_5)[colnames(imb_ecoli_0_6_7_vs_5) != "class"]
imb_ecoli_0_6_7_vs_5 <- imb_ecoli_0_6_7_vs_5 %>% mutate_at(change, function(x) {as.numeric(as.character(x))})
imb_ecoli_0_6_7_vs_5 <- imb_ecoli_0_6_7_vs_5[, c("class", setdiff(colnames(imb_ecoli_0_6_7_vs_5), "class"))]
save(imb_ecoli_0_6_7_vs_5, file = "data/imb_ecoli_0_6_7_vs_5.RData")

# glass2 ------------------------------------------------------------------

imb_glass2 <- read.keel("files/keel/imbalance/ratio2/glass2.dat")
change <- colnames(imb_glass2)[colnames(imb_glass2) != "Class"]
imb_glass2 <- imb_glass2 %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Class)
imb_glass2 <- imb_glass2[, c("class", setdiff(colnames(imb_glass2), "class"))]
save(imb_glass2, file = "data/imb_glass2.RData")

# glass4 ------------------------------------------------------------------

imb_glass4 <- read.keel("files/keel/imbalance/ratio2/glass4.dat")
change <- colnames(imb_glass4)[colnames(imb_glass4) != "Class"]
imb_glass4 <- imb_glass4 %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Class)
imb_glass4 <- imb_glass4[, c("class", setdiff(colnames(imb_glass4), "class"))]
save(imb_glass4, file = "data/imb_glass4.RData")

# glass5 ------------------------------------------------------------------

imb_glass5 <- read.keel("files/keel/imbalance/ratio2/glass5.dat")
change <- colnames(imb_glass5)[colnames(imb_glass5) != "Class"]
imb_glass5 <- imb_glass5 %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Class)
imb_glass5 <- imb_glass5[, c("class", setdiff(colnames(imb_glass5), "class"))]
save(imb_glass5, file = "data/imb_glass5.RData")

# yeast6 ------------------------------------------------------------------

imb_yeast6 <- read.keel("files/keel/imbalance/ratio2/yeast6.dat")
change <- colnames(imb_yeast6)[colnames(imb_yeast6) != "Class"]
imb_yeast6 <- imb_yeast6 %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Class)
imb_yeast6 <- imb_yeast6[, c("class", setdiff(colnames(imb_yeast6), "class"))]
save(imb_yeast6, file = "data/imb_yeast6.RData")

# yeast_0_3_5_9_vs_7_8 ---------------------------------------------------

imb_yeast_0_3_5_9_vs_7_8 <- read.keel("files/keel/imbalance/ratio2/yeast-0-3-5-9_vs_7-8.dat")
change <- colnames(imb_yeast_0_3_5_9_vs_7_8)[colnames(imb_yeast_0_3_5_9_vs_7_8) != "class"]
imb_yeast_0_3_5_9_vs_7_8 <- imb_yeast_0_3_5_9_vs_7_8 %>% mutate_at(change, function(x) {as.numeric(as.character(x))})
imb_yeast_0_3_5_9_vs_7_8 <- imb_yeast_0_3_5_9_vs_7_8[, c("class", setdiff(colnames(imb_yeast_0_3_5_9_vs_7_8), "class"))]
save(imb_yeast_0_3_5_9_vs_7_8, file = "data/imb_yeast_0_3_5_9_vs_7_8.RData")
