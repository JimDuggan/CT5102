# Use the package envnames and the functions:
#   environment()
# parent.env()
# environment_name(env)
# Show
# The current environment
# The parent
# The parent of the parent
library(envnames)

c_env <- environment()
print(c_env)
cat("The current environment = ",environment_name(c_env))

p_env <- parent.env(c_env)
print(p_env)

pp_env <- parent.env(p_env)
print(pp_env)

search()
