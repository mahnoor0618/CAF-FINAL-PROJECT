cat("\t\t\t\"FINANCIAL FRAUD DETECTION USING R\"")
n = as.integer(readline("Enter number of transactions: "))

transaction_id = c()
amount = c()
time = c()
location = c()
status = c()

for(i in 1:n)
  {
  cat("\nEnter Details for Transaction", i, "\n")
  
  transaction_id[i] = as.numeric(readline("Enter Transaction ID: "))
  
  amount[i] = as.numeric(readline("Enter Transaction Amount: "))
  
  time[i] = as.numeric(readline("Enter Transaction Time (0-23): "))
  
  location[i] = readline("Enter Location: ")
}

for(i in 1:n){
  
  if(amount[i] > 100000 |
     (time[i] >= 0 & time[i] <= 4) |
     location[i] == "Foreign"){
    
    status[i] = "Fraud"
    
  }
  
  else{
    
    status[i] = "Normal"
  }
}

cat("\t\t\t\"TRANSACTION REPORT\"")

for(i in 1:n){
  
  cat("\nTransaction ID =", transaction_id[i])
  
  cat("\nAmount =", amount[i])
  
  cat("\nTime =", time[i])
  
  cat("\nLocation =", location[i])
  
  cat("\nStatus =", status[i])
}

fraud_count = sum(status == "Fraud")

normal_count = sum(status == "Normal")

cat("\nTotal Fraud Transactions =", fraud_count)

cat("\nTotal Normal Transactions =", normal_count)

total_transactions = length(status)

fraud_percentage = (fraud_count / total_transactions) * 100

cat("\nFraud Percentage =", fraud_percentage,"%")

barplot(table(status),
        main = "Fraud vs Normal Transactions",
        xlab = "Transaction Status",
        ylab = "Number of Transactions")

pie(table(status),
    main = "Fraud Transaction Percentage")