library(tidyverse)

# ecoli_0_vs_1 --------------------------------------------------------

ecoli_0_vs_1 <- read.keel("files/keel/imbalance/ratio1/ecoli-0_vs_1.dat")
change <- colnames(ecoli_0_vs_1)[colnames(ecoli_0_vs_1) != "Class"]
ecoli_0_vs_1 <- ecoli_0_vs_1 %>%
  mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Class)
ecoli_0_vs_1 <- ecoli_0_vs_1[, c("class", setdiff(colnames(ecoli_0_vs_1), "class"))]
save(ecoli_0_vs_1, file = "data/ecoli_0_vs_1.RData")


# iris0 -------------------------------------------------------------------

iris0 <- read.keel("files/keel/imbalance/ratio1/iris0.dat")
change <- colnames(iris0)[colnames(iris0) != "Class"]
iris0 <- iris0 %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Class)
iris0 <- iris0[, c("class", setdiff(colnames(iris0), "class"))]
iris0 <- iris0 %>% mutate(class = fct_relevel(class, "positive", "negative"))
save(iris0, file = "data/iris0.RData")

# glass0 ------------------------------------------------------------------

glass0 <- read.keel("files/keel/imbalance/ratio1/glass0.dat")
change <- colnames(glass0)[colnames(glass0) != "Class"]
glass0 <- glass0 %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Class)
glass0 <- glass0[, c("class", setdiff(colnames(glass0), "class"))]
glass0 <- glass0 %>% mutate(class = fct_relevel(class, "positive", "negative"))
save(glass0, file = "data/glass0.RData")

# glass1 ------------------------------------------------------------------

glass1 <- read.keel("files/keel/imbalance/ratio1/glass1.dat")
change <- colnames(glass1)[colnames(glass1) != "Class"]
glass1 <- glass1 %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Class)
glass1 <- glass1[, c("class", setdiff(colnames(glass1), "class"))]
glass1 <- glass1 %>% mutate(class = fct_relevel(class, "positive", "negative"))
save(glass1, file = "data/glass1.RData")

# glass6 ------------------------------------------------------------------

glass6 <- read.keel("files/keel/imbalance/ratio1/glass6.dat")
change <- colnames(glass6)[colnames(glass6) != "Class"]
glass6 <- glass6 %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Class)
glass6 <- glass6[, c("class", setdiff(colnames(glass6), "class"))]
glass6 <- glass6 %>% mutate(class = fct_relevel(class, "positive", "negative"))
save(glass6, file = "data/glass6.RData")

# haberman ----------------------------------------------------------------

# es haberman normal... ya está cargado

# wisconsin ---------------------------------------------------------------

wisconsin <- read.keel("files/keel/imbalance/ratio1/wisconsin.dat")
change <- colnames(wisconsin)[colnames(wisconsin) != "Class"]
wisconsin <- wisconsin %>% mutate_at(change, as.numeric)%>%
  rename(class = Class)
wisconsin <- wisconsin[, c("class", setdiff(colnames(wisconsin), "class"))]
wisconsin <- wisconsin %>% mutate(class = fct_relevel(class, "positive", "negative"))
save(wisconsin, file = "data/wisconsin.RData")
