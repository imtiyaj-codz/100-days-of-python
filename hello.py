print("Welcome tot he tip calculator \n")

bill=float(input("What was the total bill :₹ \n"))
tip=float(input("What percantage of tip would you like to give :\n"))
tip_adder=(tip/100)*bill
total_tip=tip_adder+bill

split=float(input("How many persons do you want to split the bill in : "))

bill_splitter=total_tip/split
print(f"Your total bill is : {round(bill_splitter,3)}")
