n=int(input()) #number of students
arr=[]
for i in range(n):
    arr.append(list(map(str,input().split()))) #input from user
key=input() 
for j in range(n):
    if arr[j][0]==key :
        sum=(float(arr[j][1])+float(arr[j][2])+float(arr[j][3])) #computing sum of the student matching with key
avg=sum/3 #average
print("%.2f" %avg) #printing average upto two decimal places

#passes all test cases
