alphabets = [
    'a','b','c','d','e','f','g','h','i','j',
    'k','l','m','n','o','p','q','r','s','t',
    'u','v','w','x','y','z'
]

encryption=input("Enter encode to encypt and decode to decyprt : ")

message=input("Typer your message : ").lower()

shift=int(input("Enter the shift number to "))

def encrypt(original_text,shift_number):
    for letter in original_text:
        alphabets.index(letter)



encrypt(original_text=message,shift_number=shift)