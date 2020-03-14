n=int(input())
d=[] #declaration of a dictionary 'd'
for i in range(n):
    key=input()
    value=float(input())
    d.append([value,key])
d.sort() #sorts only the values of dictionary in ascending order
for j in range(n):
    if d[0][0]!=d[j][0]:
        break #element at jth index gives second runner up marks
new=[] #declaring a new list
k=j
while d[j][0]==d[k][0]:
    new.append(d[k][1]) #new has all the keys that have runner up value
    if k==n-1:
        break
    else:
        k+=1
new.sort() #sorting the key(name) in ascending order
for t in range(len(new)):
    print(new[t]) #printing all names(keys) in new lines

#passes all test cases.

