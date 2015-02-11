txCaCompanyData <- companyData %>% select(RANK, STATE, COMPANY, INDUSTRY)%>% filter(STATE %in% c("TX", "CA"))
industryGrowthData <- companyData %>% select(INDUSTRY, cummean(REVENUE), cummean(GROWTH))%>% group_by(INDUSTRY)
stateGrowth <- companyData %>% select(STATE, CITY, cummax(GROWTH), cummax(REVENUE))%>% group_by(STATE)%<% arrange(STATE)
cityGrowth <- companyData %>% select(CITY, cummin(GROWTH), cummin(REVENUE))%>% group_by(CITY) %>% arrange(desc(GROWTH))
