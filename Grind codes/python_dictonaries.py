print("Our first python Dictonary")

dict={
    "fruits":"apple",
    "cars":"Suzuki",
    "trees":"Bonsai"
    }

dict["something"]="This is how you inser and value inside a dictonary"
# This is how you add an key value pair in a dictonari

# print(dict)
# print(dict["cars"])#This is how you access desired key value pair from python dictonari


empty_dictonary = {} #This is how you create a empty dictonary in python

# empty_dictonary["city"]="Pallet Town"

# print(empty_dictonary)


# This is how you wipe ot a dictonary in python
# empty_dictonary={}
# print(empty_dictonary)

# This is how you edit an dictonary

# dict["fruits"]="Banana"
# print(dict)

# for i in dict:
    # print(i)#in this method only the key of the dictonaries are going to be printed on the console using the loop

for key in dict:
    print(key)
    print(dict[key])
