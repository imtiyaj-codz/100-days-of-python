import random
word_list=["Dog","Cat","Bird"]

chosen_word=random.choice(word_list)

for letter in chosen_word:
    print(letter)

if letter =="D":
    print("correct")
if letter =="O":
    print("correct")
if letter =="G":
    print("correct")
else:
    print("Wrong")