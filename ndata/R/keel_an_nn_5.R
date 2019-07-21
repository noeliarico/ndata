# ecoli_5an --------------------------------------------------------------
ecoli_5an_nn <- read.keel("files/keel/noisy/an/nn/nn5/ecoli-5an-nn.dat")
ecoli_5an_nn$Site <- factor(as.character(ecoli_5an_nn$Site), levels = c("cp","im","imL","imS","imU","om","omL","pp"))

change <- colnames(ecoli_5an_nn)[colnames(ecoli_5an_nn) != "Site"]
ecoli_5an_nn <- ecoli_5an_nn %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Site)

ecoli_5an_nn <- ecoli_5an_nn[, c("class", setdiff(colnames(ecoli_5an_nn), "class"))]

save(ecoli_5an_nn, file = "data/ecoli_5an_nn.RData")

# glass_5an --------------------------------------------------------------
glass_5an_nn <- read.keel("files/keel/noisy/an/nn/nn5/glass-5an-nn.dat")

change <- colnames(glass_5an_nn)[colnames(glass_5an_nn) != "TypeGlass"]
glass_5an_nn <- glass_5an_nn %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = TypeGlass)

glass_5an_nn <- glass_5an_nn[, c("class", setdiff(colnames(glass_5an_nn), "class"))]

save(glass_5an_nn, file = "data/glass_5an_nn.RData")

# ionosphere_5an --------------------------------------------------------------
ionosphere_5an_nn <- read.keel("files/keel/noisy/an/nn/nn5/ionosphere-5an-nn.dat")

change <- colnames(ionosphere_5an_nn)[colnames(ionosphere_5an_nn) != "Class"]
ionosphere_5an_nn <- ionosphere_5an_nn %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Class)

ionosphere_5an_nn <- ionosphere_5an_nn[, c("class", setdiff(colnames(ionosphere_5an_nn), "class"))]

save(ionosphere_5an_nn, file = "data/ionosphere_5an_nn.RData")

# sonar_5an --------------------------------------------------------------
sonar_5an_nn <- read.keel("files/keel/noisy/an/nn/nn5/sonar-5an-nn.dat")

change <- colnames(sonar_5an_nn)[colnames(sonar_5an_nn) != "Type"]
sonar_5an_nn <- sonar_5an_nn %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Type)

sonar_5an_nn <- sonar_5an_nn[, c("class", setdiff(colnames(sonar_5an_nn), "class"))]
sonar_5an_nn <- sonar_5an_nn %>% mutate(class = fct_relevel(class, "R", "M"))

save(sonar_5an_nn, file = "data/sonar_5an_nn.RData")

# wine_5an --------------------------------------------------------------
wine_5an_nn <- read.keel("files/keel/noisy/an/nn/nn5/wine-5an-nn.dat")

change <- colnames(wine_5an_nn)[colnames(wine_5an_nn) != "Class"]
wine_5an_nn <- wine_5an_nn %>% mutate_at(change, function(x) {as.numeric(as.character(x))}) %>%
  rename(class = Class)

wine_5an_nn <- wine_5an_nn[, c("class", setdiff(colnames(wine_5an_nn), "class"))]

save(wine_5an_nn, file = "data/wine_5an_nn.RData")
