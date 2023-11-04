# While Loop with Global Variable and For Loop
i = 1
while i <= 3
    println(i)
    global i += 1
end

for j = 1:3
    println(j)
end
# Output: 123123

# Variable ‘j’ Redefinition
j = 0
for j = 1:3
    println(j)
end
# Output: 123

# For Loop with Array
for i in [1, 4, 0]
    println(i)
end
# Output: 140

# For Loop with Strings
for s ∈ ["foo", "bar", "baz"]
    println(s)
end
# Output:
# foo
# bar
# baz

# While Loop with `break` and For Loop
# Code 1
i = 1
while true
    println(i)
    if i >= 3
        break
    end
    global i += 1
end

# Code 2
for j = 1:1000
    println(j)
    if j >= 3
        break
    end
end
# Output: 123123

# For Loop with `continue` statement
for i = 1:10
    if i % 3 != 0
        continue
    end
    println(i)
end
# Output: 369

# Nested For Loop
for i = 1:2, j = 3:4
    println((i, j))
end
# Output:
# (1, 3)
# (1, 4)
# (2, 3)
# (2, 4)

# Redefining `i` Inside Loop
for i = 1:2, j = 3:4
    println((i, j))
    i = 0
end
# Output:
# (1, 3)
# (1, 4)
# (2, 3)
# (2, 4)

# Using `zip` Function in For Loop
for (j, k) in zip([1 2 3], [4 5 6 7])
    println((j, k))
end
# Output:
# (1, 4)
# (2, 5)
# (3, 6)
