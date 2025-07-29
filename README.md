# A/B Test: Day-1 retention in mobile game

This repository contains an A/B test evaluating whether moving a level gate from level 30 to level 40 affects user retention on day 1. Data is loaded from a local SQL Server instance and analyzed in R.

## Summary

- **Design**: Randomized controlled trial (RCT)
- **Metric**: Day-1 retention (binary)
- **Groups**: `gate_30` (control) vs `gate_40` (treatment)

### Results

- **Proportion test**: p-value = 0.0755 → No statistically significant difference at α = 0.05  
- **Logistic regression**: p < 0.05, coefficient for `gate_40` = -0.0303  
  → Statistically significant at the 5% level

**Conclusion**:  
Users in `gate_40` have approximately 3% lower odds of retaining on day 1 compared to `gate_30`. While the raw difference is not significant in a proportion test, the regression model suggests a small but significant negative effect.

## Tools

- R  
- SQL Server  
- `prop.test()`, `tidymodels`, logistic regression

## Project structure

scripts/ # SQL connection, data cleaning, sanity checks, AB test 
AB_function/ # Reusable A/B testing function
plots/ # Visualizations 
analysis/ # Project report 