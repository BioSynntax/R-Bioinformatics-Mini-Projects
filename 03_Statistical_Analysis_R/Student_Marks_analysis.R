# ============================================================
# Statistical Analysis of Student Marks Using R
# ============================================================

# Create student dataset
student_marks <- data.frame(
  Name = c("Student1", "Student2", "Student3", "Student4", "Student5",
           "Student6", "Student7", "Student8", "Student9", "Student10"),
  Gender = c("Female", "Male", "Female", "Male", "Female",
             "Male", "Female", "Male", "Female", "Male"),
  Age = c(21, 22, 21, 23, 22, 21, 23, 22, 21, 23),
  Marks = c(78, 88, 92, 80, 85, 90, 75, 86, 94, 90)
)

# Display dataset
print(student_marks)

# Structure of dataset
str(student_marks)

# Summary statistics
summary(student_marks)

# ------------------------------------------------------------
# Basic Statistical Measures
# ------------------------------------------------------------

mean_marks <- mean(student_marks$Marks)
median_marks <- median(student_marks$Marks)
sd_marks <- sd(student_marks$Marks)
min_marks <- min(student_marks$Marks)
max_marks <- max(student_marks$Marks)

cat("Mean Marks:", mean_marks, "\n")
cat("Median Marks:", median_marks, "\n")
cat("Standard Deviation:", sd_marks, "\n")
cat("Minimum Marks:", min_marks, "\n")
cat("Maximum Marks:", max_marks, "\n")

# ------------------------------------------------------------
# Gender-wise Analysis
# ------------------------------------------------------------

gender_mean <- aggregate(Marks ~ Gender,
                         data = student_marks,
                         FUN = mean)

print(gender_mean)

# ------------------------------------------------------------
# Marks Distribution
# ------------------------------------------------------------

hist(
  student_marks$Marks,
  main = "Distribution of Student Marks",
  xlab = "Marks",
  ylab = "Frequency"
)

# ------------------------------------------------------------
# Boxplot of Marks
# ------------------------------------------------------------

boxplot(
  student_marks$Marks,
  main = "Boxplot of Student Marks",
  ylab = "Marks"
)

# ------------------------------------------------------------
# Age vs Marks Correlation
# ------------------------------------------------------------

correlation <- cor(
  student_marks$Age,
  student_marks$Marks
)

cat("Correlation between Age and Marks:",
    correlation, "\n")

# ------------------------------------------------------------
# Scatter Plot
# ------------------------------------------------------------

plot(
  student_marks$Age,
  student_marks$Marks,
  main = "Age vs Student Marks",
  xlab = "Age",
  ylab = "Marks",
  pch = 19
)

# Add regression line
model <- lm(Marks ~ Age, data = student_marks)

abline(model)

# ------------------------------------------------------------
# Final Summary
# ------------------------------------------------------------

cat("\n================ STUDENT MARKS SUMMARY ================\n")
cat("Number of students:", nrow(student_marks), "\n")
cat("Mean marks:", mean_marks, "\n")
cat("Median marks:", median_marks, "\n")
cat("Standard deviation:", sd_marks, "\n")
cat("Minimum marks:", min_marks, "\n")
cat("Maximum marks:", max_marks, "\n")
cat("Age-Marks correlation:", correlation, "\n")
cat("========================================================\n")