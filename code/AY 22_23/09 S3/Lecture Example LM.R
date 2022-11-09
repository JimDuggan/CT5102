rep_lm <- function(name,model,data_f_name){
  mod <- lm(as.formula(model),data=get(data_f_name))
  mod$Information <- list(Name=name,
                          DateRun=date(),
                          LinearModel=model,
                          DataSource=data_f_name,
                          Columns=colnames(get(data_f_name)),
                          Observations=nrow(get(data_f_name)))
  class(mod) <- c("rep_lm","lm")
  mod
}


summary.rep_lm <- function(x){
  message(sprintf("(1) rep_lm class summary\n"))
  message(sprintf("Model Name: %s   \tDate of Run: %s\n",x$Information$Name,x$Information$DateRun))
  message(sprintf("Linear Model: %s \tData Source: %s\n",x$Information$LinearModel,x$Information$DataSource))
  message(sprintf("Columns: %s\n",x$Information$Columns))
  message(sprintf("Observations: %d\n",x$Information$Observations))
  
  message(sprintf("(2) lm class summary\n"))
  class(x) <- "lm"
  summary(x)
}

m <- rep_lm("My Model", "eruptions~waiting","faithful")
