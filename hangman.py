import random

word_list=["dog","cat","bird"]

chosen_word=random.choice(word_list)
print(chosen_word)

placeholder= ""
word_list=len(chosen_word)
for i in range(word_list):
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
