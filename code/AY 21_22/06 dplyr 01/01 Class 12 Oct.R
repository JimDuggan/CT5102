oct_rp <- observations %>% 
            filter(month==10,station=="ROCHES POINT" |
                             station=="MACE HEAD") %>% 
            arrange(desc(wdsp)) %>%
            select(wdsp,everything())

ggplot(oct_rp,aes(x=date,y=wdsp,colour=station))+geom_point()+geom_line()

oct_rp_16 <- observations %>% 
  filter(month==10,day==16,station=="ROCHES POINT" |
           station=="MACE HEAD") %>% 
  arrange(desc(wdsp)) %>%
  select(wdsp,everything())

ggplot(oct_rp_16,aes(x=date,y=wdsp,colour=station))+geom_point()+geom_line()

