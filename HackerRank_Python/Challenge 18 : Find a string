def count_substring(string, sub_string):
    x=0
    for i in range(len(string)+1):
        for j in range(i,len(string)+1):
            if string[i:j]==sub_string: #this involves all possible slicing of the string
                x+=1
    return x

if __name__ == '__main__':
    string = input().strip()
    sub_string = input().strip()
    
    count = count_substring(string, sub_string)
    print(count)

#passes all test cases
