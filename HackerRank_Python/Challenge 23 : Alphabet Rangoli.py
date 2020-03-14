def print_rangoli(size):
    # your code goes here

    n = size
    alpha = 'abcdefghijklmnopqrstuvwxyz'

    for i in range(n): #prints upper half and center line
        if i != 0 : #no center dash in first line. So this if-else condition.
            print('-'*((4*n-3 - (4*(i+1)-3))//2)+'-'.join(alpha[n-1:n-i-1:-1])+'-'+'-'.join(alpha[n-i-1:n])+'-'*((4*n-3 - (4*(i+1)-3))//2))
        else :
            print('-'*((4*n-3 - (4*(i+1)-3))//2)+'-'.join(alpha[n-1:n-i-1:-1])+'-'.join(alpha[n-i-1:n])+'-'*((4*n-3 - (4*(i+1)-3))//2))

    for i in range(n-2,-1,-1): #prints lower half
        if i != 0 : #no center dash in last line. So this if-else condition.
            print('-'*((4*n-3 - (4*(i+1)-3))//2)+'-'.join(alpha[n-1:n-i-1:-1])+'-'+'-'.join(alpha[n-i-1:n])+'-'*((4*n-3 - (4*(i+1)-3))//2))
        else :
            print('-'*((4*n-3 - (4*(i+1)-3))//2)+'-'.join(alpha[n-1:n-i-1:-1])+'-'.join(alpha[n-i-1:n])+'-'*((4*n-3 - (4*(i+1)-3))//2))

if __name__ == '__main__':
    n = int(input())
    print_rangoli(n)

#passes all test cases
