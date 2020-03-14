n=int(input()) #number of transformations
a=[] #final output list
for i in range(n): #defining different procedures
    arr=list(map(str,input().split())) #a variable that changes everytime the loop runs and holds the operation to be done.
    if arr[0]=='insert':
        a.insert(int(arr[1]),int(arr[2]))
    elif arr[0]=='append':
        a.append(int(arr[1]))
    elif arr[0]=='pop':
        a.pop()
    elif arr[0]=='print':
        print(a)
    elif arr[0]=='reverse':
        a.reverse()
    elif arr[0]=='remove':
        a.remove(int(arr[1]))
    elif arr[0]=='sort':
        a.sort()

#passes all test cases
