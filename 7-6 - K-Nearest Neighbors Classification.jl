# Extract errors and sells from the data
errors_and_sells = []
for (size, sell) in orange_sizes
    push!(errors_and_sells, (size, sell))
end

# Take the K nearest errors and sells
k = 20
nearest_errors_and_sells = sort(errors_and_sells)[1:k]

# Extract the labels from the nearest errors and sells
nearest_sells = [sell for (_error, sell) in nearest_errors_and_sells]

# Count the labels
counted_nearest = counter(nearest_sells)

# Find the label with the highest count
highest_vote(counted_nearest)