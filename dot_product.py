#Uses python3

import sys

def max_dot_product(a, b):
    res = 0
    for i in range(len(a)):
        indexA = get_index(a)
        indexB = get_index(b)
        res = res + a[indexA] * b[indexB]
        del a[indexA]
        del b[indexB]
    return res

def get_index(inputArray):
    firstElement = inputArray[0]
    arrayIndex = 0
    for i in range(len(inputArray)):
        if firstElement < inputArray[i]:
            firstElement = inputArray[i]
            arrayIndex = i
    return arrayIndex

if __name__ == '__main__':
    input = sys.stdin.read()
    data = list(map(int, input.split()))
    n = data[0]
    a = data[1:(n + 1)]
    b = data[(n + 1):]
    print(max_dot_product(a, b))
    
