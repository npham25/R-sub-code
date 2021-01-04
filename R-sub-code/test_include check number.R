setwd("/Users/mecakao/Desktop") #change working directory to save file
stats <- read.csv("/Users/mecakao/Desktop/test.csv") #copy file path into " "
ticker <- stats[,2]
work <- stats[,3]

n <- length(work)
r <- 252 #range

add <- rep(0, n)
number <- rep(0, n) # NEW

add[1] <- work[1] #first item of ticker A
number[1] <- 1 #NEW

i <- 2 #start compare with item in row 2
check <- 2 # variable to check new ticker, start by 2 
          # because the first item always equals to the first PRC

temp <- ticker[1] # create the ticker variable to check whether 
                  #keep working on same ticker

while (i <= n) { 
  while (ticker[i] == temp) { #keep working on same ticker
    if (check <= r) { #loops run (r-1) times
      add[i] <- max(work[i], add[i-1])
      number[i] <- check # 1-252 (NEW)
      check <- check + 1
    }
    else {
      add[i] <- max(work[(i-r+1):i]) #r items
    }
    i <- i + 1
  }
  temp <- ticker[i] # change temp to new ticker
  add[i] <- work[i] #the first item equals to the first PRC in new ticker
  number[i] <- 1 #NEW
  check <- 2 # start again by check = 2
  i <- i + 1 # keep moving to next row
}

stats$number = number #NEW: add number column
stats$Result = add
head(stats)
write.csv(stats,file = "Result.csv")
