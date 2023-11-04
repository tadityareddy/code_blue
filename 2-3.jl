# Logical AND Operations
t(1) && t(2) # true && true evaluates to true
t(1) && f(2) # true && false evaluates to false
f(1) && f(2) # false && false evaluates to false

# Logical OR Operations
t(1) || t(2) # true || true evaluates to true
t(1) || f(2) # true || false evaluates to true
f(1) || f(2) # false || false evaluates to false

# Recursive Factorial Function
function fact(n::Int)
    n >= 0 || error("n must be non-negative")
    n == 0 && return 1
    n * fact(n-1)
end

fact(5) # Output: fact(5) computes and returns the factorial of 5, which is 120.

# Bitwise AND and OR Operations
f(1) & t(2) # false & true evaluates to false
t(1) | t(2) # true | true evaluates to true

# Conditional Assignment
# Code 1
true && (x = (1, 2, 3)) # x is assigned the tuple (1, 2, 3) because the condition is met.

# Code 2
false && (x = (1, 2, 3)) # x remains unchanged, and no assignment is made.
