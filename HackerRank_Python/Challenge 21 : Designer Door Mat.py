l = list(map(int,input().split()))
n = l[0]
m = l[1]
s='|..' #a string that is to be repeated


for i in range(n//2): #prints lines above 'WELCOME'

    for j in range((m-3-6*i)//2):
        print('-', end='')

    print('.'+s*2*i+'|.' , end='')

    for j in range((m-3-6*i)//2): 
        print('-', end='') #end='' written as we have to print in single line

    print('') #adding a new line character


print(((m-7)//2)*'-'+'WELCOME'+((m-7)//2)*'-') #printing line with 'WELCOME'


for i in range(n//2): #prints line below 'WELCOME'

    for j in range((m-3-6*(n//2-i-1))//2): #same logistics as above loop. Only i --> (n//2-i-1)
        print('-', end='')

    print('.'+s*2*(n//2-i-1)+'|.' , end='')

    for j in range((m-3-6*(n//2-i-1))//2):
        print('-', end='')

    print('')

#passes all test cases
