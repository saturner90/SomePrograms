# This program is in Alpha stages with improvements to the code being made
# in Java.
# It is designed to be run with the use of a barcode scanner, and R Studio.

# In order to use this program, hit "command + a" to use select all.
# Next while everything is highlighted, click on Run; found in the
# upper right corner of this text box.
# From here you will be prompted to choose a file. Use a csv file,
# or else you will get a read error.

# MAKE SURE THE CURSOR IS IN THE BOTTOM TEXT BOX.
# If the cursor is still in this box instead of the one below, it
# will cause values to be entered here and will not be checked.
# If values are accidentally added to the code, close the program without
# saving and re-open the file.

check_the_fabrics <- function() {
  current <- 0
  pres <- 0
  type <- 0
  fabs <- c(0)
  lazboy = read.table(file.choose())

  ii <- 1
  for(ii in 1:length(lazboy[,1])){
    if(!is.null(lazboy[ii,1])){
      holder <- substring(lazboy[ii,1], 1, 8)
    fabs <- c(fabs, holder)
    }
  }

  # The loop is used to repeat the checking process indefinitely,
  # it is up to the user to stop the process by closing the program
  # or clicking the stop button in R Studio.
  while(1) {
    current <- scan(what = "character", nmax = 1)
    type <- substring(current, 1, 2)

    # Leather, the function will check for a leather tag.
    # If there is a leather tag it will return as 1,
    # which is equivalent to TRUE.
    if(check_type(type)) ifelse(current == fabs, pres <- pres + 1, 0)
    else ifelse(current == substring(fabs, 1, 7), pres <- pres + 1, 0)
    at_least_one(pres, current) # Will check if there is a match
    pres <- 0
  }

}

# Types of Leather to be checked against. If type does not match
# any of these, then the current item is not a leather.
check_type <- function(type){
  if(type == 'FL' || type == 'RD' || type == 'EL' ||
     type == 'DL' || type == 'GL' || type == 'HL' ||
     type == 'RE' || type == 'RF')
    leather <- 1
  else
    leather <- 0
  return(leather)
}

# Used to print whether the item is in the current fabric list
at_least_one <- function(x, y){
  if(x >= 1)
    print("Here")
  else
    print("Not here")
}


# As an R script this last line will run the script.
check_the_fabrics()
