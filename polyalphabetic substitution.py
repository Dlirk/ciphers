userin = list(input('Enter a message: '))
key = input('Enter your key: ')
char = 0
n=0
for i in range(len(userin)):
    key_val = ((ord(key[n])-96))
    char = ord(userin[i])
    char = char + key_val
    char = chr(char)
    userin[i] = char
    print(key_val)
    print(i)
    print(n)
    if n==len(userin):
        break
"".join(userin)
print(userin)
    
