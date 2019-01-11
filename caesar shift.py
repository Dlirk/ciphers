userin = list(input('Enter a message: '))
shift = int(input('How many shifts? '))
char = 0

for i in range(len(userin)):
    char = ord(userin[i])
    char = char + shift
    char = chr(char)
    userin[i] = char

"".join(userin)
print(userin)
    
