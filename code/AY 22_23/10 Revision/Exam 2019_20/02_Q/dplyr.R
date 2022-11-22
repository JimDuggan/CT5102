library(tidyr)

st <- tibble(
  ID=c(0010, 0020, 0030, 0040),
  Name=c("J. Murphy", "A. Sanchez", "F. Mueller", "P. Rock")
)

res <- tibble(
  ID=c(0010, 0010, 0020, 0040, 0050),
  Module=c("CX101","CX102","CX102","CX102","CX102"),
  Title=c("Programming","Databases","Databases","Databases","Databases"),
  Result=c(70,67,86,58,71)
)

full_join(st,res)

anti_join(st,res)

inner_join(st,res)

anti_join(res,st)


td <- gather(table4b,key = Year,value=Population,`1999`:`2000`)

td %>% group_by(Year) %>%
       summarise(MaxPop=max(Population),
                 CountryMax=country[which(Population==MaxPop)],
                 MinPop=min(Population),
                 CountryMin=country[which(Population==MinPop)])


td %>% group_by(country) %>%
       mutate(Previous=lag(Population),
              Delta=Population-Previous,
              PChange=100*Delta/Previous) %>% 
      filter(!is.na(Previous)) %>% arrange(desc(PChange))



