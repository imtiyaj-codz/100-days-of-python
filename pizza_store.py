print("Welcome to our pizzare pizza's ")
bill=0
size=input("What size of pizza do you want? S M or L")
peperoni=input("Do you want peperoni for your pizza")
cheese=input("Do you want cheese for your pizza")
if size=="S":
    bill=15
elif size=="M":
    bill=20
elif size=="L":
    bill=25
else:
    print("Wrong keyword  : ")
if peperoni=="yes":
    if size =="S":
        bill+=2
    else:
        bill+=3

if cheese=="yes":
    bill+=1
print(f"Your total bill is :${bill}")