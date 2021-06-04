![Screen Shot 2021-05-26 at 11 37 27 AM](https://user-images.githubusercontent.com/54850909/119698356-c8104700-be16-11eb-90f5-f2acda6b5f87.png)

# Table of Contents
* Introduction
* Data Overview
* Visual Analysis Results
* Conclusion

# Introduction
This was a collaborative project with my three data science classmates. The repository for the full project can be found [here](https://github.com/jdbanta/DS202_Final_Project). My team and I wanted to better understand the factors which contribute to the thousands of traffic accidents that occur every year in the US. We decided to dig into some traffic accident data to examine why collisions happen and who is involved. By taking a deeper look at this issue, we hoped to be more informed about traffic safety ourselves, share those findings with our fellow classmates, and think about any ways the risks of driving could be reduced.

# Data Overview
The [data](https://www-fars.nhtsa.dot.gov/Trends/TrendsGeneral.aspx) was taken from The United States National Highway Traffic Safety Aministration website which reports statistics on fatal crashes as part of the Fatality Analysis Reporting System. This dataset is broken into numerous different tables making it easy to download for analysis. It is also updated yearly to continue informing the US public. At the time of this analysis, data from years 1994 to 2017 was available.

# Visual Analysis Results
For my contribution to the project, I downloaded and cleaned data relating to the demographics of the traffic accident data and used it to perform visual analysis. My goal was to learn more specifics about the people who lost their lives to these crashes.

## Sex
![Screen Shot 2021-05-26 at 12 50 06 PM](https://user-images.githubusercontent.com/54850909/119707578-ebd88a80-be20-11eb-8474-d833a66b2ed2.png)

We see that, over this time period, the number of male fatalities was more than double the number of female fatalities. This result was somewhat surprising to me and I wondered why that was the case. According to this [article](https://www.iihs.org/topics/fatality-statistics/detail/males-and-females) by The Insurance Institute for Highway Safety (IIHS), this is due to the fact that men typically drive more miles than women and are more likely to exhibit risky driving behavior (e.g. not using seatbelts, drunk driving, speeding, etc.). The article states that "crashes involving male drivers often are more severe than those involving female drivers. However, females are more likely than males to be killed or injured in crashes of equal severity, although sex differences in fatality risk diminish with age."

## Age
![Screen Shot 2021-05-26 at 3 38 42 PM](https://user-images.githubusercontent.com/54850909/119727928-7d072b80-be38-11eb-9af2-826712123b54.png)

* The age range that accounted for the highest number of fatalities over this time period was 25-34
* The distribution of Age is somewhat left-skewed as is to be expected given the age range of drivers

## Seatbelt Use

### Overall Use
![Screen Shot 2021-05-26 at 12 57 44 PM](https://user-images.githubusercontent.com/54850909/119709415-cd738e80-be22-11eb-8047-6fc73685569c.png)

This result was also interestng to me at first because the number of fatalities when seatbelts were used was greater than the number of fatalities when seatbelts were not used. When considering how many people regularly use seatbelts, however, this outcome makes more sense. According to this [article](https://www.nhtsa.gov/risky-driving/seat-belts#:~:text=Overview,was%20at%2090.7%25%20in%202019.) from The National Highway Traffic Safety Administration, the national seatbelt use was 90.7% as of 2019. It is also noted that seatbelt use was estimated to save 14,955 lives in 2017.

### Seatbelt Use by Age

![Screen Shot 2021-05-26 at 3 40 09 PM](https://user-images.githubusercontent.com/54850909/119728165-bfc90380-be38-11eb-9136-8bec2afad3e3.png)

* Within this time period, 11,388 fatalities used seatbelts
* Of these, a plurality were older than 74

\
![Screen Shot 2021-05-26 at 3 40 36 PM](https://user-images.githubusercontent.com/54850909/119728174-c192c700-be38-11eb-8b04-48db0bc401f7.png)

* Over this time period, 10,076 fatalities did not use seatbelts
* Of these, most were in the 25-34 age range
* In the other 2,087 cases, it was unknown whether seatbelts were used


# Conclusion

#### Results:
* In general, the the number of male and female fatalities are disproportionate. Overall, twice as many men have died in traffic accidents than women. There may be many reasons for this, as discussed above. 
* The age group with the most fatalities during this time period was 25-34 years old. 
* After examining seatbelt use, I found that 42.8 percent of cases did not use seatbelts and 48.4 percent did use seatbelts. As discussed above, these numbers make sense considering that around 90.7% of people use seatbelts. As I also mentioned, the use of seatbelts saves thousands of lives every year, so continuing to encourage and enforce seatbelt use will reduce fatalities.

#### Based on this analysis, these are some things I think anyone can do to promote safe driving:
* Challenge yourself to drive responsibly 
  * Only drive when you are capable of being fully alert
  * Don't drive distracted or recklessly 
* Encourage friends and family to drive responsibly 
  * Offer youself as a designated driver if possible
* Wear a seatbelt and ask those riding with you to wear seatbelts




