# -------- Logistic regression ------- # 
# Retention DAY 1 BINARY OUTCOME ---
## Key predictor: Gate 30/40 (FCT)
## Control: Gamerounds (INT) 

## Feat tidymodels -- 
library(tidymodels)


## --- Selecting features for modeling --- 
reg_tbl <- ab_tbl %>% 
  select(version, gamerounds, retention_1) %>% 
  mutate(retention_1 = factor(retention_1))

## Model rec -- 
log_rec <- recipe(retention_1 ~ version + gamerounds, reg_tbl)

## Logistic model spec -- 
log_spec <- logistic_reg() %>% 
  set_mode("classification") %>% 
  set_engine("glm")

## Logistic model workflow -- 

log_wf <- workflow() %>% 
  add_model(log_spec) %>% 
  add_recipe(log_rec)

## Train model -- 
log_mod_1 <- fit(log_wf, reg_tbl)


## ----- MODEL RESULTS -----
log_mod_1 %>% 
  extract_fit_engine() %>% 
  summary()

## RESULTS: Gate_40 estimate: -0.0303049
## P-value < 0.05 : Statistical significant on 5% level with negative estimate
## EXP: ~ 0.97 
## Approx. 3% lower odds of retaining on DAY 1 for gate_40 









