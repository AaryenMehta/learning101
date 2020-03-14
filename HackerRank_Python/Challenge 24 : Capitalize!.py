# Complete the solve function below.
def solve(s):
    for x in s[:].split(): #splits words of 's'
        s = s.replace(x, x.capitalize()) #replaces first letter of the word with capital letter
    return s

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    s = input()

    result = solve(s)

    fptr.write(result + '\n')

    fptr.close()

#passes all test cases

