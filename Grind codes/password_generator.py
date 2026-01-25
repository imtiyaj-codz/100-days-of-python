import random

print("Welcome to the password generator")
alphabets = [
    'a','b','c','d','e','f','g','h','i','j','k','l','m',
    'n','o','p','q','r','s','t','u','v','w','x','y','z',
    'A','B','C','D','E','F','G','H','I','J','K','L','M',
    'N','O','P','Q','R','S','T','U','V','W','X','Y','Z'
]
numbers=['1','0','2','3','4','5','6','7','8','9']

symbols=['!','#','$','&','(',')','*','+']

nr_alpha=int(input("How many number of letter do you want in your password :"))
nr_no=int(input("How many numbers do you want in your password : "))
nr_symbol=int(input("How symbols do you want in your password : "))


a=random.sample(alphabets,nr_alpha)
b=random.sample(numbers,nr_no)
c=random.sample(symbols,nr_symbol)

password=a+b+c

random.shuffle(password)

final="".join(password)
print(f"Your password is :{final}")
