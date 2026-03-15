import random
# prints random number from a given range a to b including the numbers a and b
print(random.randint(1,10))

# print random floating number from zero and one
# and if we multiply it by 10 random.random()*10 we increase the range to 10 e 
print(random.random())
print(random.random()*10)

# picks one random item from the list
names=["alain","Bonnie","Clemont","Ash"]
print(random.choice(names))

# it shhuffles the list like shuffling cards  
cards=[1,2,3,4,5,6,7,8,9,0]
random.shuffle(cards)
print(cards)

# prints random floating point number inclusive of a and b
print(random.uniform(1,10))

random.seed(10)
#if you use this function here then the randint's below will only print number in a specific range but if your comment it out all the randint's will give you random number inclusive of a and b 
print(random.randint(1,10))
print(random.randint(1,10))
print(random.randint(1,10))