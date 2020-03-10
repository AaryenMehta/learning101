import textwrap

def wrap(string, max_width):
    result=''
    for _ in range(1,len(string)+1):
        result+=string[_-1] #storing characters
        if _ % max_width == 0 :
            result+='\n' #when the line has length equal to max_width, inserting a new line character
    return result

if __name__ == '__main__':
    string, max_width = input(), int(input())
    result = wrap(string, max_width)
    print(result)

#passes all test cases
