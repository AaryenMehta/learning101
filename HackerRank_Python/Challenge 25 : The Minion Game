def minion_game(string): #compares the scores and gives the output
    # your code goes here

    if kevin(string) > stuart(string) : 
        print('Kevin',kevin(string))

    elif kevin(string) < stuart(string) :
        print('Stuart',stuart(string))

    else :
        print('Draw')

def kevin(string) :
 
    #returns kevin's score
    vowel = 'AEIOU'
    l = []

    for i in range(len(string)):
        if string[i] in vowel :
            for j in range(len(string)+1):
                if string[i:j] != '' :
                    l.append(string[i:j]) #list l contains all such possible strings

    return len(l)

def stuart(string) :
 
    #returns stuart's score
    vowel = 'AEIOU'
    l = []
    for i in range(len(string)):
        if string[i] not in vowel :
            for j in range(len(string)+1):
                if string[i:j] != '' :
                    l.append(string[i:j]) #list l contains all such possible strings

    return len(l)

if __name__ == '__main__':
    s = input()
    minion_game(s)

#not all test cases are passing using this code. (7 passing, 8 failing)
