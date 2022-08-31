ath <- observations %>% filter(station=="ATHENRY",month==1)

ath %>% group_by(day) %>% summarise(Total=sum(rain))


y_tot <- observations %>% 
  group_by(station) %>% 
  summarise(TotalRain=sum(rain,na.rm=T)) %>%
  arrange(desc(TotalRain))

y_tot1 <- observations %>% 
  group_by(station) %>% 
  summarise(TotalRain=sum(rain,na.rm=T)) %>%
  arrange(TotalRain)


m_r <- observations %>% group_by(month,station) %>%
      summarise(TotalRain=sum(rain,na.rm=T))

m_r <- observations %>% group_by(month) %>%
  summarise(TotalRain=sum(rain,na.rm=T),
            NRec=n())
