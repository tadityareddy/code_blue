# Simple Function to Calculate Sum
function f(x, y)
    x + y
end
f(2, 3)  # Output: 5

# Assigning Function to a Variable
g = f
g(2, 3)  # Output: 5

# Function Using Unicode Symbol
∑(x, y) = x + y
∑(2, 3)  # Output: 5

# Function Mutating an Array and Creating a New Binding
function f(x, y)
    x[1] = 42
    y = 7 + y
    return y
end
a = [4, 5, 6]
b = 3
f(a, b)  # Output: 10
# Modified a: [42, 5, 6]
# Unchanged b: 3

# Recursive Fibonacci Function
fib(n::Integer) = n ≤ 2 ? one(n) : fib(n-1) + fib(n-2)
fib(6)  # Output: 8

# Function Returning Product of `x` and `y` with Unused Code
function Q(x, y)
    return x * y
    x + y
end
Q(2, 3)  # Output: 6

# Function to Calculate Hypotenuse
function hypot(x, y)
    x = abs(x)
    y = abs(y)
    if x > y
        r = y / x
        return x * sqrt(1 + r * r)
    end
    if y == 0
        return zero(x)
    end
    r = x / y
    return y * sqrt(1 + r * r)
end
hypot(3, 4)  # Output: 5.0

# Function with Explicit Return Type
function S(x, y)::Int8
    return x * y
end
typeof(S(1, 2))  # Output: Int8

# Function to Print a Variable
function printx(x)
    println("x = $x")
    return nothing
end
