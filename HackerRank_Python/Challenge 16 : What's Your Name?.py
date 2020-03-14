def print_full_name(a, b):
    print("Hello",a,b+'!',"You just delved into python.",sep=' ') #last argument seperates different arguments by space when printing

if __name__ == '__main__':
    first_name = input()
    last_name = input()
    print_full_name(first_name, last_name)

#passes all test cases
