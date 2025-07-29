# -------Power analysis ----------
      ##### MDE: 2% #####

#Library -- 
library(pwr)

h <- ES.h(0.44 , 0.46)

pwr.2p.test(h = h, power = 0.8, sig.level = 0.05)

# REQUIRED SAMPLE SIZE: 9712 PER GROUP 
#TOTAL: 19424 
## SAMPLE SIZE ENOUGH -- 

