library(tidyverse)
library(caret)
library(foreign)

objects_numerical_binary_l10 <- c("banknote", "haberman", "skin", "vertebral_column", "weight_height")
objects_numerical_binary_m10 <- c("audit_risk", "ionosphere", "sonar")

# Audit risk --------------------------------------------------------------

audit_risk <- read.table(file.path("files", "audit_risk.csv"),
                         header = TRUE,
                         sep = ",")
audit_risk <- audit_risk %>% as_tibble(audit_risk) %>%
  rename(class = Risk) %>%
  mutate(LOCATION_ID = NULL,
         Detection_Risk = NULL,
         class = factor(class))
audit_risk <- audit_risk[, c("class", setdiff(colnames(audit_risk), "class"))]
audit_risk <- audit_risk %>% mutate(class = fct_relevel(class, "1", "0"))

set.seed(123)
mini_audit_risk <- createDataPartition(audit_risk$class, p = 0.3, list = FALSE)
mini_audit_risk <- audit_risk[mini_audit_risk, ]


save(audit_risk, mini_audit_risk, file = "data/audit_risk.RData")

# Bank note ---------------------------------------------------------------

banknote <- read_csv(file.path("files", "bank_note.csv"),
                      col_types = cols(class = col_factor(NULL)),
                      col_names = c("variance",
                                    "skewness",
                                    "curtosis",
                                    "entropy",
                                    "class"))
banknote <- banknote[, c("class", setdiff(colnames(banknote), "class"))]
banknote <- banknote %>% mutate(class = fct_relevel(class, "1", "0"))

set.seed(123)
mini_banknote <- createDataPartition(banknote$class, p = 0.1, list = FALSE)
mini_banknote <- banknote[mini_banknote, ]

save(banknote, mini_banknote, file = "data/banknote.RData")

# Ecoli -------------------------------------------------------------------

ecoli <- read_table(file.path("files", "ecoli.csv"),
                    col_types = cols(class = col_factor(NULL)),
                    col_names = c("sequence", "mcg", "gvh", "lip", "chg",
                                  "aac", "alm1", "alm2", "class")) %>%
  mutate(sequence = NULL)
ecoli <- ecoli %>% as_tibble()
ecoli <- ecoli[, c("class", setdiff(colnames(ecoli), "class"))]

filtered_ecoli <- ecoli %>% filter(!class %in% c("imL", "imS", "imU", "omL")) %>% droplevels()

save(ecoli, filtered_ecoli, file = "data/ecoli.RData")

# EGG eye state -----------------------------------------------------------

egg_eye_state <- read.arff(file.path("files", "eeg_eye_state.arff"))
egg_eye_state <- as_tibble(egg_eye_state) %>% rename(class = eyeDetection)
egg_eye_state <- egg_eye_state[, c("class", setdiff(colnames(egg_eye_state), "class"))]

set.seed(123)
mini_egg_eye_state <- createDataPartition(egg_eye_state$class, p = 0.01, list = FALSE)
mini_egg_eye_state <- egg_eye_state[mini_egg_eye_state, ]

save(egg_eye_state, mini_egg_eye_state, file = "data/egg_eye_state.RData")

# Haberman ----------------------------------------------------------------

haberman <- read_csv(file.path("files", "haberman.csv"),
                     col_types = cols(.default = col_double(),
                                      class = col_factor()),
                     col_names = c("age", "year", "nodes", "class"))
haberman <- haberman[, c("class", setdiff(colnames(haberman), "class"))]
haberman <- haberman %>% mutate(class = fct_relevel(class, "2", "1"))
save(haberman, file = "data/haberman.RData")


# Ionosphere --------------------------------------------------------------

ionosphere <- read.csv(file.path("files", "ionosphere.csv"), header = FALSE)
ionosphere <- as_tibble(ionosphere) %>%
                mutate(V1 = as.factor(V1),
                       V2 = as.factor(V2)) %>%
                rename(class = V35)

ionosphere <- ionosphere[, c("class", setdiff(colnames(ionosphere), "class"))]

ionospheren <- ionosphere %>% mutate(V1 = NULL,
                                      V2 = NULL)


save(ionosphere, ionospheren, file = "data/ionosphere.RData")


# Iris --------------------------------------------------------------------

iris <- read_csv(file.path("files", "iris.csv"),
                 col_types = cols(.default = col_double(),
                                  Species = col_factor()),
                 col_names = c("Sepal.Length", "Sepal.Width",
                               "Petal.Length", "Petal.Width",
                               "Species")) %>%
                 rename(class = Species)
iris <- iris[, c("class", setdiff(colnames(iris), "class"))]

save(iris, file = "data/iris.RData")

# Life expectancy ---------------------------------------------------------

life_expectancy <- read_csv(file.path("files", "life_expectancy.csv"),
                            col_types = cols(class = col_factor(NULL)),
                            col_names = c("rank", "country", "overall",
                                          "male", "female", "class"),
                            skip = 1) %>% select(overall, male, female, class)
life_expectancy <- life_expectancy[, c("class", setdiff(colnames(life_expectancy), "class"))]

save(life_expectancy, file = "data/life_expectancy.RData")


# Seeds -------------------------------------------------------------------

seeds <- read.table(file.path("files", "seeds.csv"))
colnames(seeds) <- c("area",
                     "perimeter",
                     "compactness",
                     "length_kernel",
                     "width_kernel",
                     "asymmetry_coefficient",
                     "length_kernel_groove",
                     "class")
seeds <- as_tibble(seeds)
seeds <- seeds[, c("class", setdiff(colnames(seeds), "class"))]

save(seeds, file = "data/seeds.RData")

# Skin --------------------------------------------------------------------

skin <- read.table(file.path("files", "skin.csv"))
colnames(skin) <- c("red", "green", "blue", "class")
skin <- as_tibble(skin) %>% mutate(class = factor(class))
skin <- skin[, c("class", setdiff(colnames(skin), "class"))]

set.seed(123)
mini_skin <- createDataPartition(skin$class, p = 0.001, list = F)
mini_skin <- skin[mini_skin,]

save(skin, mini_skin, file = "data/skin.RData")


# Sonar -------------------------------------------------------------------

sonar <- read.csv(file.path("files", "sonar.csv"), header = FALSE)
sonar <- as_tibble(sonar) %>% rename(class = V61) %>% mutate(class = factor(class))
sonar <- sonar[, c("class", setdiff(colnames(sonar), "class"))]
sonar <- sonar %>% mutate(class = fct_relevel(class, "R", "M"))

save(sonar, file = "data/sonar.RData")

# Vertebral column --------------------------------------------------------

vertebral_column2 <- read.arff(file.path("files", "vetebral_column_2.arff"))
vertebral_column2 <- as_tibble(vertebral_column2)
vertebral_column2 <- vertebral_column2[, c("class", setdiff(colnames(vertebral_column2), "class"))]
vertebral_column2 <- vertebral_column2 %>% mutate(class = fct_relevel(class, "Normal", "Abnormal"))

vertebral_column3 <- read.arff(file.path("files", "vertebral_column_3.arff"))
vertebral_column3 <- as_tibble(vertebral_column3)
vertebral_column3 <- vertebral_column3[, c("class", setdiff(colnames(vertebral_column3), "class"))]

save(vertebral_column2, vertebral_column3, file = "data/vertebral_column.RData")



# Weight, height, gender --------------------------------------------------

weight_height <- read_csv(file.path("files", "weight-height.csv"),
                          col_types = cols(Gender = col_factor())) %>%
                          rename(class = Gender)
weight_height <- weight_height[, c("class", setdiff(colnames(weight_height), "class"))]

set.seed(123)
mini_weight_height <- createDataPartition(weight_height$class, p = 0.02, list = FALSE)
mini_weight_height <- weight_height[mini_weight_height, ]

save(weight_height, mini_weight_height, file = "data/weight_height.RData")


# Waves -------------------------------------------------------------------

waves <- read_csv("files/waves.csv", col_names = FALSE)
waves$X22 <- as.factor(waves$X22)
waves <- waves %>% rename(class = X22)
waves <- waves[, c("class", setdiff(colnames(waves), "class"))]

set.seed(123)
mini_waves <- createDataPartition(waves$class, p = 0.05, list = FALSE)
mini_waves <- waves[mini_waves,]

save(waves, mini_waves, file = "data/waves.RData")

# Wireless Indoor Localization --------------------------------------------

wifi_localization <- read_tsv(file.path("files", "wifi_localization.csv"),
                              col_names = c(paste0("V",1:7), "class"),
                              col_types = cols(class = col_factor(NULL)))
wifi_localization <- wifi_localization[, c("class", setdiff(colnames(wifi_localization), "class"))]

set.seed(123)
mini_wifi_localization <- createDataPartition(wifi_localization$class, p = 0.1, list = FALSE)
mini_wifi_localization <- wifi_localization[mini_wifi_localization,]

save(wifi_localization, mini_wifi_localization, file = "data/wifi_localization.RData")

# Yeast -------------------------------------------------------------------

yeast <- read.table(file.path("files", "yeast.csv"))
colnames(yeast) <-  c("seq", "mcg", "gvh", "alm", "mit", "erl", "pox", "vac", "nuc", "class")
yeast$seq <- NULL
yeast <- as_tibble(yeast)
yeast <- yeast[, c("class", setdiff(colnames(yeast), "class"))]


set.seed(123)
mini_yeast <- createDataPartition(yeast$class, p = 0.1, list = FALSE)
mini_yeast <- yeast[mini_yeast,]

mini_yeast_cc <- mini_yeast
mini_yeast_cc$class <- mini_yeast_cc$class %>% fct_collapse(
  other = c("ERL", "EXC", "ME1", "ME2", "POX", "VAC"),
  CYT = "CYT",
  ME3 = "ME3",
  MIT = "MIT"
)

save(yeast, mini_yeast, mini_yeast_cc, file = "data/yeast.RData")
