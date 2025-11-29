import random
print("Welcome to rock paper scissors game \n")
user_choice=int(input("\033[31mFor Rock press 0, For Paper press 1 and for scissors press 2\033[0m\n"))

computer_choice=random.randint(0,2)
# Rock0 wins 2Scissors
# Paper1 wins0
# Scissors2 wins 1

if computer_choice == 0 and user_choice==2:
    print("computer choose rock and you choose scissors\n Oops you loose")
elif computer_choice == 2 and user_choice==1:
    print("Computer choose Scissors and your choose Paper\n Oops you loose")
elif computer_choice == 1 and user_choice == 0:
    print("Computer choose paper and you choose Rock\n Oops you loose")
elif computer_choice == 1 and user_choice == 2:
    print("Computer choose Paper and your choose Scissors\n Congrats you Win")
elif computer_choice == 2 and user_choice==1:
    print("Computer choose Scissors and your choose paper\n Congrats you Win")
elif computer_choice == 0 and user_choice==1:
    print("Computer choose Rock and your choose Paper\n Congrats you Win")
else:
    print("Draw")