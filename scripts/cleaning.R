###Changing column types###

ab_tbl <- ab_tbl %>% 
  mutate(version = factor(version),
         retention_1 = as.logical(retention_1))
