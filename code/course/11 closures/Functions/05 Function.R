plus <- function(x){
  function(y)x+y
}

plus_one <- plus(1)

ls(env=rlang::fn_env(plus_one))