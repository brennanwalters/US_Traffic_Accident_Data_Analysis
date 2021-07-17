
library(readxl)
library(ggplot2)
library(tidyverse)

# Load data
gender = read.table('Gender.xls', sep = '\t', header = TRUE)
head(gender)

# Drop empty NA column
gender = gender[-3] 

# Narrow down to just male and female
gender$FieldDesc = as.factor(gender$FieldDesc)
gender$FieldDesc = droplevels(gender$FieldDesc, exclude= c("Total","Unknown"))
gender = na.omit(gender) 
head(gender)

# Fatalities by gender
ggplot(gender, aes(FieldDesc, Total, fill=FieldDesc)) + 
  geom_bar(stat="Identity") + 
  theme_minimal() + 
  theme(legend.title = element_blank()) +
  labs(title="Total Fatalities by Gender", x="", y="Total Fatalities")

# Load Age tables
Age1994 = read.table('Age1994.xls', sep = '\t', header = TRUE)
Age1995 = read.table('Age1995.xls', sep = '\t', header = TRUE)
Age1996 = read.table('Age1996.xls', sep = '\t', header = TRUE)
Age1997 = read.table('Age1997.xls', sep = '\t', header = TRUE)
Age1998 = read.table('Age1998.xls', sep = '\t', header = TRUE)
Age1999 = read.table('Age1999.xls', sep = '\t', header = TRUE)
Age2000 = read.table('Age2000.xls', sep = '\t', header = TRUE)
Age2001 = read.table('Age2001.xls', sep = '\t', header = TRUE)
Age2002 = read.table('Age2002.xls', sep = '\t', header = TRUE)
Age2003 = read.table('Age2003.xls', sep = '\t', header = TRUE)
Age2004 = read.table('Age2004.xls', sep = '\t', header = TRUE)
Age2005 = read.table('Age2005.xls', sep = '\t', header = TRUE)
Age2006 = read.table('Age2006.xls', sep = '\t', header = TRUE)
Age2007 = read.table('Age2007.xls', sep = '\t', header = TRUE)
Age2008 = read.table('Age2008.xls', sep = '\t', header = TRUE)
Age2009 = read.table('Age2009.xls', sep = '\t', header = TRUE)
Age2010 = read.table('Age2010.xls', sep = '\t', header = TRUE)
Age2011 = read.table('Age2011.xls', sep = '\t', header = TRUE)
Age2012 = read.table('Age2012.xls', sep = '\t', header = TRUE)
Age2013 = read.table('Age2013.xls', sep = '\t', header = TRUE)
Age2014 = read.table('Age2014.xls', sep = '\t', header = TRUE)
Age2015 = read.table('Age2015.xls', sep = '\t', header = TRUE)
Age2016 = read.table('Age2016.xls', sep = '\t', header = TRUE)
Age2017 = read.table('Age2017.xls', sep = '\t', header = TRUE)



# Rename columns and remove empty columns
Age1994 = Age1994[-3]
names(Age1994) = c("Age","Killed1994")
Age1995 = Age1995[-3]
names(Age1995) = c("Age","Killed1995")
Age1996 = Age1996[-3]
names(Age1996) = c("Age","Killed1996")
Age1997 = Age1997[-3]
names(Age1997) = c("Age","Killed1997")
Age1998 = Age1998[-3]
names(Age1998) = c("Age","Killed1998")
Age1999 = Age1999[-3]
names(Age1999) = c("Age","Killed1999")
Age2000 = Age2000[-3]
names(Age2000) = c("Age","Killed2000")
Age2001 = Age2001[-3]
names(Age2001) = c("Age","Killed2001")
Age2002 = Age2002[-3]
names(Age2002) = c("Age","Killed2002")
Age2003 = Age2003[-3]
names(Age2003) = c("Age","Killed2003")
Age2004 = Age2004[-3]
names(Age2004) = c("Age","Killed2004")
Age2005 = Age2005[-3]
names(Age2005) = c("Age","Killed2005")
Age2006 = Age2006[-3]
names(Age2006) = c("Age","Killed2006")
Age2007 = Age2007[-3]
names(Age2007) = c("Age","Killed2007")
Age2008 = Age2008[-3]
names(Age2008) = c("Age","Killed2008")
Age2009 = Age2009[-3]
names(Age2009) = c("Age","Killed2009")
Age2010 = Age2010[-3]
names(Age2010) = c("Age","Killed2010")
Age2011 = Age2011[-3]
names(Age2011) = c("Age","Killed2011")
Age2012 = Age2012[-3]
names(Age2012) = c("Age","Killed2012")
Age2013 = Age2013[-3]
names(Age2013) = c("Age","Killed2013")
Age2014 = Age2014[-3]
names(Age2014) = c("Age","Killed2014")
Age2015 = Age2015[-3]
names(Age2015) = c("Age","Killed2015")
Age2016 = Age2016[-3]
names(Age2016) = c("Age","Killed2016")
Age2017 = Age2017[-3]
names(Age2017) = c("Age","Killed2017")


# Merge
AgeTotal = merge(merge(merge(merge(merge(merge(merge(merge(merge(merge(merge(merge(merge(merge(merge(merge(merge(merge(merge(merge(merge(merge(merge(
  Age1994,
  Age1995,all=TRUE),
  Age1996,all=TRUE),
  Age1997,all=TRUE),
  Age1998,all=TRUE),
  Age1999,all=TRUE),
  Age2000,all=TRUE),
  Age2001,all=TRUE),
  Age2002,all=TRUE),
  Age2003,all=TRUE),
  Age2004,all=TRUE),
  Age2005,all=TRUE),
  Age2006,all=TRUE),
  Age2007,all=TRUE),
  Age2008,all=TRUE),
  Age2009,all=TRUE),
  Age2010,all=TRUE),
  Age2011,all=TRUE),
  Age2012,all=TRUE),
  Age2013,all=TRUE),
  Age2014,all=TRUE),
  Age2015,all=TRUE),
  Age2016,all=TRUE),
  Age2017,all=TRUE)

head(AgeTotal)


AgeTotal = droplevels(AgeTotal, exclude = c("Total"))
AgeTotal$Age = ordered(AgeTotal$Age, levels=c('< 5','5 -- 9','10 -- 15','16 -- 20', '21 -- 24', '25 -- 34', '35 -- 44', '45 -- 54', '55 -- 64', '65 -- 74', '75 +', '> 74'))
AgeTotal = na.omit(AgeTotal)
AgeTotal = mutate(AgeTotal, total= Killed1994+Killed1995+Killed1996+Killed1997+Killed1998+Killed1999+Killed2000+Killed2001+Killed2002+Killed2003+Killed2004+Killed2005+Killed2006+Killed2007+Killed2008+Killed2009+Killed2010+Killed2011+Killed2012+Killed2013+Killed2014+Killed2015+Killed2016+Killed2017)

# Fatalities by age
ggplot(AgeTotal, aes(Age,total,fill=Age)) + 
  geom_bar(stat="Identity") + 
  labs(title="1994-2017 Fatalities by Age", y="Fatalities") + 
  theme_minimal() + 
  theme(legend.position = "none") +
  theme(axis.text.x = element_text(angle=90, vjust=0.5, hjust=1))



### Seatbelt use 

restraint = read.table('restraint.xls', sep = '\t', header = TRUE, skip=2)
restraint = restraint[-10] #drop empty column
restraint$FieldDesc = as.factor(restraint$FieldDesc)
restraint$FieldDesc = droplevels(restraint$FieldDesc, exclude = c('< 5','5 -- 9','10 -- 15','16 -- 20', '21 -- 24', '25 -- 34', '35 -- 44', '45 -- 54', '55 -- 64', '65 -- 74', '75 +', '> 74', 'Unknown'))
restraint = na.omit(restraint)


restraint = gather(restraint, key=FieldDesc)
head(restraint)
#Narrow down to total percentages
restraint$FieldDesc = factor(restraint$FieldDesc)
restraint$FieldDesc = droplevels(restraint$FieldDesc, exclude = c("Restraint.Use.Unknown","Restraint.Not.Used","Restraint.Used","Total"))
restraint = na.omit(restraint)

#Reorder and rename levels
restraint$FieldDesc = ordered(restraint$FieldDesc, levels=c("Percent2","Percent1","Percent","Percent3"))
levels(restraint$FieldDesc) = c("Unknown","Not Used","Used","Total")
restraint


#Plot percentages
ggplot(restraint, aes(FieldDesc,value,fill=value)) +
  geom_bar(stat="Identity") + 
  labs(title="Use of Restraints for Total Fatalities", x="",y="Percentage") +
  theme_minimal() + 
  geom_text(aes(x=FieldDesc,y=value + 4,label=c("48.4%","42.8%","8.9%","100%"))) +
  theme(legend.position = "none")



# Seatbelt use by age

restraint.age = read.table('restraint.xls', sep = '\t', header = TRUE, skip=2)
restraint.age = restraint.age[-10]
#Drop total category
restraint.age$FieldDesc = as.factor(restraint.age$FieldDesc)
restraint.age$FieldDesc = droplevels(restraint.age$FieldDesc, exclude = "Total")
restraint.age = na.omit(restraint.age)
#Levels out of order
levels(restraint.age$FieldDesc)
restraint.age$FieldDesc = ordered(restraint.age$FieldDesc, levels=c('< 5','5 -- 9','10 -- 15','16 -- 20', '21 -- 24', '25 -- 34', '35 -- 44', '45 -- 54', '55 -- 64', '65 -- 74', '75 +', '> 74', 'Unknown'))
head(restraint.age)


# Plot restraints used by age
ggplot(restraint.age, aes(FieldDesc,Restraint.Used,fill=FieldDesc)) +
  geom_bar(stat="Identity") + 
  labs(title="Restraints Used", y="Fatalities with restraints",x="Age") +
  theme_minimal() +
  theme(legend.position = "none") +
  theme(axis.text.x = element_text(angle=90, vjust=0.5, hjust=1))

# Plot restraints not used by age
ggplot(restraint.age, aes(FieldDesc,Restraint.Not.Used,fill=FieldDesc)) + 
  geom_bar(stat="Identity") + 
  labs(title="Restraints Not Used", y="Fatalities without restraints",x="Age") + 
  theme_minimal() + 
  theme(legend.position = "none") +
  theme(axis.text.x = element_text(angle=90, vjust=0.5, hjust=1))



