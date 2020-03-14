def merge_the_tools(string, k):
    # your code goes here

    l = []
    arr = ''
    final = []

    for i in range(len(string)//k): 
        l.append(string[k*i:k*i+k]) #l stores all n//k parts of the string

    for j in range(len(l)): #arr is made to contain modified string parts
        arr += l[j][0]
        for t in range(k):
            if l[j][t] not in arr : #all previously non occuring characters are added to arr
                arr += l[j][t]
        final.append(arr) #arr is appended to final list
        arr = '' #arr is set to empty again

    for _ in range(len(final)):
        print(final[_]) #printing elements of final list in new line

if __name__ == '__main__':
    string, k = input(), int(input())
    merge_the_tools(string, k)

#passes all test cases
