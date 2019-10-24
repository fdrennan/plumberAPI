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

#* @apiTitle Plumber Example API



#* Echo back the input
#* @param msg The message to echo
#* @get /wait
function() {
  save_cars()
  list(msg = paste0("Completed save cars"))
}

