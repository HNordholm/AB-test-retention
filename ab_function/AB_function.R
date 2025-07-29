## A/B PROP TEST FUNCTION ## 
######### SUMMARY #########
#PROPORTION TEST RESULTS##

AB_prop_test <- function(df, version_col, outcome_col) 
{library(dplyr)
  
  version_sym <- rlang::ensym(version_col)
  outcome_sym <- rlang::ensym(outcome_col)
  
    ab_summary <- df %>%
    group_by(!!version_sym) %>%
    summarise(
      retained = sum(!!outcome_sym == TRUE),
      total = n(),
      .groups = "drop")
    
test <- prop.test(x=ab_summary$retained,n=ab_summary$total)
  cat("\n📊 AB-test: Proportiontest\n")
  print(ab_summary)
  cat("\n---\n")
  print(test)
  invisible(list(summary = ab_summary, test = test))}

