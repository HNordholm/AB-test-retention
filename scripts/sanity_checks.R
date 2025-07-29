#  -------- Sanity check AB data ----------


# Sample balance -- 
ab_tbl %>% 
  group_by(version) %>% 
  summarise( n = n())

# CHISQUARE TEST -- 

chisq.test(table(ab_tbl$version))

# P < 0.05 -> rejecting null hypothesis -- 
## Sample not even between versions -- 

# T-test gamerounds between versions -- 
t.test(gamerounds ~ version, ab_tbl)

# P > 0.05 -> No significant difference in gamerounds (5% level)

### Controlling userid only exist in one version -- RCT -- 

ab_tbl %>% 
  group_by(userid) %>% 
  summarise(n_versions = n_distinct(version)) %>% 
  filter(n_versions > 1)

## Check OK -- 






