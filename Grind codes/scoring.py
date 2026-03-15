student=[150,120,89,98,34,53,65,23,63,24,45,354,234,148]

# sum is used to get the sum of any list in python
# print(sum(student))

# manual way to get the sum of a list
# sum = 0
# for score in student:
#     sum += score
# print(sum)
max_score = 0
for score in student:
    if score >= max_score:
        max_score=score
print(max_score)
