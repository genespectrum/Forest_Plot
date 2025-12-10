# Forest Plot for Gene Hazard Ratios (HR) in R
### This repository gives a short and simple guide to create a forest plot in R and show hazard ratios with confidence intervals.
## Overview
A Forest Plot is used to visualize the Hazard Ratio (HR) of multiple genes or variables along with their 95% Confidence Intervals. It helps identify genes that increase or decrease risk, making it useful in survival analysis, biomarker studies, and clinical research.
This visualization shows:
- HR values for each gene
- 95% confidence intervals (error bars)
- A reference line at HR = 1 to separate risk and no-risk effects
## Dataset Requirements
The input CSV file must contain the following columns:
- gene → Gene name or variable name
- HR → Hazard Ratio value
- lower → Lower bound of 95% confidence interval
- upper → Upper bound of 95% confidence interval
Make sure the file contains no missing values and the column names match exactly.
## Step-by-Step Tutorial
1. Install and load the Required Libraries
   
   First, you Install the ggplot2 and dplyr Packages and load it so R has access to all the tools needed to create the forest plot. These libraries support both data processing and visualization.

2. Upload the Input Dataset

   Next, you upload your CSV file using a file selection window. R reads this file and stores the gene names, hazard ratios, and confidence interval values for later steps.

3. Prepare the Data for Plotting

   After loading the data, R extracts the columns required for the forest plot and organizes them internally. This preparation ensures that each gene is matched correctly with its HR and CI values.

4. Plot the Hazard Ratios

   R then plots each gene on the y-axis and places a point on the graph to represent its hazard ratio. A horizontal line is drawn through that point to show the 95% confidence interval.

5. Add the Reference Line

   A dashed horizontal line at HR = 1 is added to the plot. This reference helps you quickly interpret whether each gene increases risk, decreases risk, or shows no significant effect.

6. Apply Clean Styling

   The plot is styled with a minimal and clean design that improves readability. Font sizes, grid lines, and layout settings are adjusted so the plot looks polished and professional.

7. Add a Clear Title

   A descriptive title is placed at the top of the plot so viewers can understand the purpose of the visualization instantly.

## Use Cases

1. Survival Analysis Biomarker Screening
   
   Forest plots help compare hazard ratios of many genes to identify which ones act as high-risk or protective biomarkers. This allows researchers to quickly spot genes with strong clinical impact.

2. Clinical Research Outcomes
   
   Researchers use forest plots to visualize treatment effects or gene influences on patient outcomes. The plot clearly shows whether variables increase or decrease the hazard.

3. Cancer Genomics Studies
   
   Forest plots reveal which genes behave as oncogenes or tumor suppressors based on their hazard ratios. This helps connect survival trends with biological mechanisms.

4. Meta-analysis of HR Values
   
   When combining hazard ratios from different studies, forest plots summarize the results visually. They provide a clear comparison of effect sizes and their confidence ranges.


