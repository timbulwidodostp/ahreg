# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Regression Analysis with Average Hazard Use ahreg (survAH) With (In) R Software
install.packages("survAH")
library("survAH")
# Estimation Regression Analysis with Average Hazard Use ahreg (survAH) With (In) R Software
ahreg_data = read.csv("https://raw.githubusercontent.com/timbulwidodostp/ahreg/main/ahreg/ahreg.csv",sep = ";")
ahreg = ahreg(Surv(time,status) ~ arm + edema + bili, tau=7, data=ahreg_data)
ahreg_ = ahreg(Surv(time,status) ~ arm + edema + bili, tau=7, data=ahreg_data, cens_strata="arm")
ahreg_1 = ahreg(Surv(time,status) ~ arm + edema + bili, tau=7, data=ahreg_data, cens_covs=c("arm","edema"))
ahreg_2 = ahreg(Surv(time,status) ~ arm + edema + bili, tau=7, data=ahreg_data, cens_covs=c("arm","edema"), link="identity")
ahreg
ahreg_
ahreg_1
ahreg_2
# Regression Analysis with Average Hazard Use ahreg (survAH) With (In) R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished