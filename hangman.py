import random

word_list=["dog","cat","bird"]

chosen_word=random.choice(word_list)
print(chosen_word)

placeholder="" #This wors as an empty container here to store the udnerscore
word_length=len(chosen_word) #This is to convert the str into interger so that it can run
for i in range(word_length): #the i variable goes from the selected word from the word_list letter by letter to replace it with the underscore
    placeholder+="_ "

print(placeholder)


guess=input("Guess the letter :").lower()
display=""
for letter in chosen_word:
    if guess == letter:
        display+=letter
    else:
        display+="_ "

print(display)
