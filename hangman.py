import random

word_list=["dog","cat","bird"]

chosen_word=random.choice(word_list)
print(chosen_word)
print(chosen_word.replace(chosen_word,"_"))

guess=input("Guess the letter :").lower()

# for letter in chosen_word:
#     if guess == letter:
#         print("Right")
#     elif guess == letter:
#         print("Right")
#     elif guess == letter:
#         print("Right")
#     elif guess == letter:
#         print("Right")
#     else:
#         print("Wrong")

for letter in chosen_word:
    if guess == letter:
        print("Right")
    else:
        print("Wrong")