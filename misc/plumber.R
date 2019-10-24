#
# This is a Plumber API. You can run the API by clicking
# the 'Run API' button above.
#
# Find out more about building APIs with Plumber here:
#
#    https://www.rplumber.io/
#

library(plumber)
library(plumberAPI)

#* Echo back the input
#* @param msg The message to echo
#* @get /wait
function() {
  Sys.sleep(2)
  list(msg = paste0("Completed sleep."))
}

