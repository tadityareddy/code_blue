# Using a block structure to calculate the sum of x and y and assign it to z
z = begin
    x = 1
    y = 2
    x + y
end

# Using semicolons to calculate the sum of x and y and assign it to z
z = (x = 1; y = 2; x + y)

# Output
# Both methods result in the variable z having the value 3, as it stores the sum of 1 and 2:
# z = 3
