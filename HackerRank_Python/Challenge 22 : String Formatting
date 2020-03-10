def string(a):
    #this function converts lists to string
    b=''
    for _ in range(len(a)) :
        b+=a[_]
    return b

def func(number):
    # your code goes here
    decimal = number
    binary = ''
    octal = ''
    hexa = ''

    while decimal != 0 : #this loop converts from decimal to binary
        binary += str(decimal % 2)
        decimal = decimal // 2
    binary = list(binary) #binary contains reverse order of digits
    binary.reverse() #string does not reverse. so typecasting into list then reversing.
    binary = string(binary)

    decimal = number

    while decimal != 0 : #this loop converts from decimal to octal
        octal += str(decimal % 8)
        decimal = decimal // 8
    octal = list(octal)
    octal.reverse()
    octal = string(octal)

    decimal = number

    while decimal != 0 : #this loop converts from decimal to hexadecimal
        if decimal % 16 == 10 :
            hexa += 'A'
        elif decimal % 16 == 11 :
            hexa += 'B'
        elif decimal % 16 == 12 :
            hexa += 'C'
        elif decimal % 16 == 13 :
            hexa += 'D'
        elif decimal % 16 == 14 :
            hexa += 'E'
        elif decimal % 16 == 15 :
            hexa += 'F'
        else :
            hexa += str(decimal % 16)
            decimal = decimal // 16
        hexa = list(hexa)
        hexa.reverse()
        hexa = string(hexa)
    
    decimal = number

    return [decimal,octal,hexa,binary] #returning a list of numbers.

def print_formatted(number):
    for _ in range(1,number+1):
        a = func(_)
        print(a[0],a[1],a[2],a[3]) #printing all four values for every number till given number 'n'.
           


if __name__ == '__main__':
    n = int(input())
    print_formatted(n)

#this program does not work. As I do not know how to print the output in a specific width (which is required in the question.)
