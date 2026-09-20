# ============================================================
# Statistical Analysis of PlantGrowth Dataset Using R
# ============================================================

# ------------------------------------------------------------
# 1. Load the built-in PlantGrowth dataset
# ------------------------------------------------------------

data("PlantGrowth")

# Display the dataset
print(PlantGrowth)

# Check structure
str(PlantGrowth)

# Check summary statistics
summary(PlantGrowth)

# ------------------------------------------------------------
# 2. Calculate group-wise mean
# ------------------------------------------------------------

group_means <- aggregate(
  weight ~ group,
  data = PlantGrowth,
  FUN = mean
)

print(group_means)

# ------------------------------------------------------------
# 3. Calculate group-wise standard deviation
# ------------------------------------------------------------

group_sd <- aggregate(
  weight ~ group,
  data = PlantGrowth,
  FUN = sd
)

print(group_sd)

# ------------------------------------------------------------
# 4. Boxplot
# ------------------------------------------------------------

boxplot(
  weight ~ group,
  data = PlantGrowth,
  main = "Plant Weight by Treatment Group",
  xlab = "Treatment Group",
  ylab = "Plant Weight"
)

# ------------------------------------------------------------
# 5. Violin plot
# ------------------------------------------------------------

# Install ggplot2 if required
if (!requireNamespace("ggplot2", quietly = TRUE)) {
  install.packages("ggplot2")
}

library(ggplot2)

ggplot(PlantGrowth, aes(x = group, y = weight)) +
  geom_violin() +
  geom_boxplot(width = 0.1) +
  labs(
    title = "Distribution of Plant Weight by Treatment Group",
    x = "Treatment Group",
    y = "Plant Weight"
  )

# ------------------------------------------------------------
# 6. Histogram
# ------------------------------------------------------------

hist(
  PlantGrowth$weight,
  main = "Distribution of Plant Weights",
  xlab = "Plant Weight",
  ylab = "Frequency"
)

# ------------------------------------------------------------
# 7. One-way ANOVA
# ------------------------------------------------------------

anova_model <- aov(
  weight ~ group,
  data = PlantGrowth
)

# Display ANOVA results
summary(anova_model)

# ------------------------------------------------------------
# 8. Extract ANOVA p-value
# ------------------------------------------------------------

anova_results <- summary(anova_model)

p_value <- anova_results[[1]][["Pr(>F)"]][1]

cat("ANOVA p-value:", p_value, "\n")

# ------------------------------------------------------------
# 9. Interpretation
# ------------------------------------------------------------

if (p_value < 0.05) {
  cat("The difference in mean plant weight among groups is statistically significant.\n")
} else {
  cat("The difference in mean plant weight among groups is not statistically significant.\n")
}

# ------------------------------------------------------------
# 10. Summary
# ------------------------------------------------------------

cat("\n================ PLANTGROWTH SUMMARY ================\n")
cat("Number of observations:", nrow(PlantGrowth), "\n")
cat("Groups:", paste(unique(PlantGrowth$group), collapse = ", "), "\n")
cat("Control mean:", mean(PlantGrowth$weight[PlantGrowth$group == "ctrl"]), "\n")
cat("Treatment 1 mean:", mean(PlantGrowth$weight[PlantGrowth$group == "trt1"]), "\n")
cat("Treatment 2 mean:", mean(PlantGrowth$weight[PlantGrowth$group == "trt2"]), "\n")
cat("ANOVA p-value:", p_value, "\n")
cat("=======================================================\n")

