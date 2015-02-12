txCaCompanyData <- companyData %>% select(RANK, STATE, COMPANY, INDUSTRY)%>% filter(STATE %in% c("TX", "CA"))
industryGrowthData <- companyData %>% group_by(INDUSTRY) %>% summarise (revMean = mean(REVENUE), groMean = mean(GROWTH))
stateGrowth <- companyData %>% group_by(STATE) %>% summarise (groMax = cummax(GROWTH), revMax = cummax(REVENUE))
cityGrowth <- companyData %>% group_by (CITY) %>% summarise (groMin = cummin(GROWTH), revMin = cummin(REVENUE))%>% arrange(desc(GROWTH))