# ecoli_20an --------------------------------------------------------------
ecoli_20an_nn <- read.keel("files/keel/noisy/an/nn/nn20/ecoli-20an-nn.dat")
ecoli_20an_nn$Site <- factor(as.character(ecoli_20an_nn$Site), levels = c("cp","im","imL","imS","imU","om","omL","pp"))

change <- colnames(ecoli_20an_nn)[colnames(ecoli_20an_nn) != "Site"]
ecoli_20an_nn <- ecoli_20an_nn %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Site)

ecoli_20an_nn <- ecoli_20an_nn[, c("class", setdiff(colnames(ecoli_20an_nn), "class"))]

save(ecoli_20an_nn, file = "data/ecoli_20an_nn.RData")

# glass_20an --------------------------------------------------------------
glass_20an_nn <- read.keel("files/keel/noisy/an/nn/nn20/glass-20an-nn.dat")

change <- colnames(glass_20an_nn)[colnames(glass_20an_nn) != "TypeGlass"]
glass_20an_nn <- glass_20an_nn %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = TypeGlass)

glass_20an_nn <- glass_20an_nn[, c("class", setdiff(colnames(glass_20an_nn), "class"))]

save(glass_20an_nn, file = "data/glass_20an_nn.RData")

# ionosphere_20an --------------------------------------------------------------
ionosphere_20an_nn <- read.keel("files/keel/noisy/an/nn/nn20/ionosphere-20an-nn.dat")

change <- colnames(ionosphere_20an_nn)[colnames(ionosphere_20an_nn) != "Class"]
ionosphere_20an_nn <- ionosphere_20an_nn %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Class)

ionosphere_20an_nn <- ionosphere_20an_nn[, c("class", setdiff(colnames(ionosphere_20an_nn), "class"))]

save(ionosphere_20an_nn, file = "data/ionosphere_20an_nn.RData")

# sonar_20an --------------------------------------------------------------
sonar_20an_nn <- read.keel("files/keel/noisy/an/nn/nn20/sonar-20an-nn.dat")

change <- colnames(sonar_20an_nn)[colnames(sonar_20an_nn) != "Type"]
sonar_20an_nn <- sonar_20an_nn %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Type)

sonar_20an_nn <- sonar_20an_nn[, c("class", setdiff(colnames(sonar_20an_nn), "class"))]
sonar_20an_nn <- sonar_20an_nn %>% mutate(class = fct_relevel(class, "R", "M"))

save(sonar_20an_nn, file = "data/sonar_20an_nn.RData")

# wine_20an --------------------------------------------------------------
wine_20an_nn <- read.keel("files/keel/noisy/an/nn/nn20/wine-20an-nn.dat")

change <- colnames(wine_20an_nn)[colnames(wine_20an_nn) != "Class"]
wine_20an_nn <- wine_20an_nn %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Class)

wine_20an_nn <- wine_20an_nn[, c("class", setdiff(colnames(wine_20an_nn), "class"))]

save(wine_20an_nn, file = "data/wine_20an_nn.RData")
