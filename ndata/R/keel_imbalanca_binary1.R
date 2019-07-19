library(tidyverse)

# ecoli_0_vs_1 --------------------------------------------------------

imb_ecoli_0_vs_1 <- read.keel("files/keel/imbalance/ratio1/ecoli-0_vs_1.dat")
change <- colnames(imb_ecoli_0_vs_1)[colnames(imb_ecoli_0_vs_1) != "Class"]
imb_ecoli_0_vs_1 <- imb_ecoli_0_vs_1 %>%
  mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Class)
imb_ecoli_0_vs_1 <- imb_ecoli_0_vs_1[, c("class", setdiff(colnames(imb_ecoli_0_vs_1), "class"))]
save(imb_ecoli_0_vs_1, file = "data/imb_ecoli_0_vs_1.RData")


# iris0 -------------------------------------------------------------------

imb_iris0 <- read.keel("files/keel/imbalance/ratio1/iris0.dat")
change <- colnames(imb_iris0)[colnames(imb_iris0) != "Class"]
imb_iris0 <- imb_iris0 %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Class)
imb_iris0 <- imb_iris0[, c("class", setdiff(colnames(imb_iris0), "class"))]
save(imb_iris0, file = "data/imb_iris0.RData")

# glass0 ------------------------------------------------------------------

imb_glass0 <- read.keel("files/keel/imbalance/ratio1/glass0.dat")
change <- colnames(imb_glass0)[colnames(imb_glass0) != "Class"]
imb_glass0 <- imb_glass0 %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Class)
imb_glass0 <- imb_glass0[, c("class", setdiff(colnames(imb_glass0), "class"))]
save(imb_glass0, file = "data/imb_glass0.RData")

# glass1 ------------------------------------------------------------------

imb_glass1 <- read.keel("files/keel/imbalance/ratio1/glass1.dat")
change <- colnames(imb_glass1)[colnames(imb_glass1) != "Class"]
imb_glass1 <- imb_glass1 %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Class)
imb_glass1 <- imb_glass1[, c("class", setdiff(colnames(imb_glass1), "class"))]
save(imb_glass1, file = "data/imb_glass1.RData")

# glass6 ------------------------------------------------------------------

imb_glass6 <- read.keel("files/keel/imbalance/ratio1/glass6.dat")
change <- colnames(imb_glass6)[colnames(imb_glass6) != "Class"]
imb_glass6 <- imb_glass6 %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Class)
imb_glass6 <- imb_glass6[, c("class", setdiff(colnames(imb_glass6), "class"))]
save(imb_glass6, file = "data/imb_glass6.RData")

# haberman ----------------------------------------------------------------

# es haberman normal...
imb_haberman <- read.keel("files/keel/imbalance/ratio1/haberman.dat")
change <- colnames(imb_haberman)[colnames(imb_haberman) != "Class"]
imb_haberman <- imb_haberman %>% mutate_at(change, as.numeric) %>%
  rename(class = Class)
imb_haberman <- imb_haberman[, c("class", setdiff(colnames(imb_haberman), "class"))]
save(imb_haberman, file = "data/imb_haberman.RData")

# wisconsin ---------------------------------------------------------------

imb_wisconsin <- read.keel("files/keel/imbalance/ratio1/wisconsin.dat")
change <- colnames(imb_wisconsin)[colnames(imb_wisconsin) != "Class"]
imb_wisconsin <- imb_wisconsin %>% mutate_at(change, as.numeric)%>%
  rename(class = Class)
imb_wisconsin <- imb_wisconsin[, c("class", setdiff(colnames(imb_wisconsin), "class"))]
save(imb_wisconsin, file = "data/imb_wisconsin.RData")
