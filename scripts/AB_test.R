## --- A/B TEST: Retention Day 1 between gate versions --- ##


AB_prop_test(ab_tbl, version, retention_1)


## --- Hypotheses ---
# H0: There is no difference in day-1 retention between gate_30 and gate_40
# HA: There is a difference in day-1 retention between G30 and G40

## --- Test Output ---
# p-value ≈ 0.0755

## --- Interpretation ---
# Since p > α (0.05), we fail to reject the null hypothesis.
# → There is no statistically significant difference in
# retention between gate_30 and gate_40 after day 1.