
def search(f):
    x = 0
    while True:
        if f(x):
            return x
        x += 1

def invert(f):
    return lambda y: search(lambda x: f(x) == y)

def square(x):
    return x * x

print("the square of 4 is",end=" ")
print(square(4))
sq = invert(square)
print("the sqrt of 4 is ",end="")
print(sq(4))
print(sq(16))