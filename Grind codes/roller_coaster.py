print("Welcome to our dragon roller coaster ")

height=int(input("Enter your height to check eligibity "))

ticket=0

if height >=120:
    print("you can ride the roll the roller coaster")
    age=int(input("Enter your age :"))
    if age<=12:
        ticket=5
    elif age >=12 and age <= 18:
        ticket=7
    elif age>=45 or age<=55:
        ticket=0
        print("Boom! you can ride for free")
    else:
        ticket=12
    photo=input("Dow you want photos of your ride type yes or no")
    if photo=="yes":
       ticket+=3 
else:
    print("you cannot ride the roll the roller coaster")

print(f"Your ticket is :{ticket}$ ")
