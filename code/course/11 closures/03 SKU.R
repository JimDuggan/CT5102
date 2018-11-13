stock <- function(id){
  id <- id
  on_hand <- 0
  list(increment=function(a)on_hand<<-on_hand+a,
       decrement=function(a)on_hand<<-on_hand-a,
       on_hand=function()on_hand,
       id=function()id,
       set_id=function(id)id<<-id,
       get_state=function()list(id=id,
                                on_hand=on_hand))
}

s1 <- stock("SKU1")

s1$increment(100)
s1$on_hand()

s2 <- stock("SKU2")

s2$increment(200)
s2$on_hand()
s1$on_hand()




