# Statistical Analysis Using R

## Overview

This mini-project demonstrates basic statistical analysis and data visualization using R programming. Two datasets were analyzed

1. PlantGrowth Dataset – One-way ANOVA and visualization of plant weight across treatment groups.
2. Student Marks Dataset – Descriptive statistics and analysis of the relationship between age and marks.

---

## 1. PlantGrowth Dataset

### Objective

To analyze plant weight across different treatment groups and determine whether there is a statistically significant difference between the groups.

### Dataset

The built-in `PlantGrowth` dataset in R contains

 30 observations
 3 treatment groups

   `ctrl` – Control
   `trt1` – Treatment 1
   `trt2` – Treatment 2

### Statistical Analysis

The following analyses were performed

 Mean calculation
 Standard deviation
 Summary statistics
 One-way ANOVA

### Mean Plant Weight

 Group                 Mean Weight 
 --------------------  ---------- 
 Control (`ctrl`)            5.032 
 Treatment 1 (`trt1`)        4.661 
 Treatment 2 (`trt2`)        5.526 

### ANOVA Result

A one-way ANOVA was performed to test whether plant weight differed among the three groups.

p-value = 0.0159

Since the p-value is below 0.05, the observed differences in mean plant weight among the groups are statistically significant at the 5% significance level.

### Visualizations

The analysis includes

 Boxplot of plant weight by treatment group
 Violin plot showing the distribution of plant weight
 Histogram showing the distribution of plant weights

### R Script

`PlantGrowth_analysis.R`

---

## 2. Student Marks Dataset

### Objective

To perform descriptive statistical analysis of student marks and examine the linear association between student age and marks.

### Dataset

The dataset contains information about

 Student name
 Gender
 Age
 Marks

### Statistical Analysis

The following measures were calculated

 Mean
 Median
 Standard deviation
 Minimum marks
 Maximum marks
 Gender-wise mean marks
 Pearson correlation between age and marks

### Results

The student marks analysis includes descriptive statistics and visualization of the marks distribution.

The relationship between age and marks was examined using Pearson correlation and a scatter plot with a linear regression line.

A correlation value close to zero indicates a weak linear association between age and marks in this dataset. Correlation describes association and does not establish causation.

### Visualizations

The analysis includes

 Histogram of student marks
 Boxplot of student marks
 Scatter plot of age versus marks with regression line

### R Script

`Student_Marks_analysis.R`

---

## Tools and Packages

 R
 Base R statistical functions
 `ggplot2` for data visualization

## Key R Functions Used

 `mean()`
 `median()`
 `sd()`
 `min()`
 `max()`
 `aggregate()`
 `aov()`
 `cor()`
 `lm()`
 `boxplot()`
 `hist()`
 `plot()`

## Project Structure

```text
03_Statistical_Analysis_R
│
├── PlantGrowth_analysis.R
├── Student_Marks_analysis.R
└── README.md
```

## Conclusion

This project demonstrates the application of basic statistical methods in R, including descriptive statistics, correlation analysis, one-way ANOVA, and data visualization. The project provides practical experience in analyzing biological and educational datasets using reproducible R scripts.
