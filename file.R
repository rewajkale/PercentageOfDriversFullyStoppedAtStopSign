library(ggplot2)
PoliceCaughts=read.csv("PoliceCaughts.csv")
PoliceCaughtsMornStaten=subset(PoliceCaughts, PoliceCaughts$timestop>=600&PoliceCaughts$timestop<1200&PoliceCaughts$city==5)
#hist(PoliceCaughtsMornBrooklyn$timestop)
PoliceCaughtsNightStaten=subset(PoliceCaughts, PoliceCaughts$timestop>=0&PoliceCaughts$timestop<600&PoliceCaughts$city==5)
#hist(PoliceCaughtsNightBrooklyn$timestop)
PoliceCaughtsEveningStaten=subset(PoliceCaughts, PoliceCaughts$timestop>=1800&PoliceCaughts$timestop<=2359&PoliceCaughts$city==5)
#hist(PoliceCaughtsEveningBrooklyn$timestop)
PoliceCaughtsAfterNoonStaten=subset(PoliceCaughts, PoliceCaughts$timestop>=1200&PoliceCaughts$timestop<1800&PoliceCaughts$city==5)
#hist(PoliceCaughtsAfterNoonBrooklyn$timestop)
morning=rbind(PoliceCaughtsMornBrooklyn$timestop,PoliceCaughtsMornManhattan, na.rm=TRUE)
PoliceCaughtsMaleBrooklyn=subset(PoliceCaughts, PoliceCaughts$sex==1 & PoliceCaughts$city==2)
PoliceCaughtsMaleManhattan=subset(PoliceCaughts, PoliceCaughts$sex==1 & PoliceCaughts$city==1)
PoliceCaughtsMaleBronx=subset(PoliceCaughts, PoliceCaughts$sex==1 & PoliceCaughts$city==3)
PoliceCaughtsMaleQueens=subset(PoliceCaughts, PoliceCaughts$sex==1 & PoliceCaughts$city==4)
PoliceCaughtsMaleStaten=subset(PoliceCaughts, PoliceCaughts$sex==1 & PoliceCaughts$city==5)
PoliceCaughtsFemaleBrooklyn=subset(PoliceCaughts, PoliceCaughts$sex==0 & PoliceCaughts$city==2)
PoliceCaughtsFemaleManhattan=subset(PoliceCaughts, PoliceCaughts$sex==0 & PoliceCaughts$city==1)
PoliceCaughtsFemaleBronx=subset(PoliceCaughts, PoliceCaughts$sex==0 & PoliceCaughts$city==3)
PoliceCaughtsFemaleQueens=subset(PoliceCaughts, PoliceCaughts$sex==0 & PoliceCaughts$city==4)
PoliceCaughtsFemaleStaten=subset(PoliceCaughts, PoliceCaughts$sex==0 & PoliceCaughts$city==5)
region=c(1,2,3,4,5)
male=c(nrow(PoliceCaughtsMaleManhattan),nrow(PoliceCaughtsMaleBrooklyn),nrow(PoliceCaughtsMaleBronx),nrow(PoliceCaughtsMaleQueens),nrow(PoliceCaughtsMaleStaten))
female=c(nrow(PoliceCaughtsFemaleManhattan),nrow(PoliceCaughtsFemaleBrooklyn),nrow(PoliceCaughtsFemaleBronx),nrow(PoliceCaughtsFemaleQueens),nrow(PoliceCaughtsFemaleStaten))
pistol=subset(PoliceCaughts,PoliceCaughts$pistol==1)
riflshot=subset(PoliceCaughts,PoliceCaughts$riflshot==1)
asltweap=subset(PoliceCaughts,PoliceCaughts$astlweap==1)
knifcuti=subset(PoliceCaughts,PoliceCaughts$knifcuti==1)
machgun=subset(PoliceCaughts,PoliceCaughts$machgun==1)
othrweap=subset(PoliceCaughts,PoliceCaughts$othrweap==1)
weapons=rbind(c("pistol","riflshot","asltweap","knifcuti","machgun", "othrweap"),c(nrow(pistol),nrow(riflshot),nrow(asltweap),nrow(knifcuti),nrow(machgun),nrow(othrweap)))
barplot(c(nrow(subset(PoliceCaughts,PoliceCaughts$forceuse==1)),nrow(subset(PoliceCaughts,PoliceCaughts$forceuse==2)),nrow(subset(PoliceCaughts,PoliceCaughts$forceuse==3)),nrow(subset(PoliceCaughts,PoliceCaughts$forceuse==4)),nrow(subset(PoliceCaughts,PoliceCaughts$forceuse==5))),c(1,2,3,4,5),xlab="1:defense of other  2:self defence 3:overcome resistence 4:other 5:suspected flight", main="Reason for force")