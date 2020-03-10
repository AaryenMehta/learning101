def mutate_string(string, position, character):
    string=string[:position]+character+string[position+1:] #slicing and rejoining the string in such a way that swapping character is not included
    return string

if __name__ == '__main__':
    s = input()
    i, c = input().split()
    s_new = mutate_string(s, int(i), c)
    print(s_new)

#passes all test cases
