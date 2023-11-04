key_values = Dict(
    "Luxury Hotels" => [],
    "Juice" => [],
    "Edible Fruit" => []
)

# Fill the key_values dictionary with data
for (size, sell) in orange_sizes
    push!(key_values[sell], size)
end

# Plotting using Plots library
using Plots

label = "Juice"
y = key_values[label]
x = fill(5, length(y))
p = scatter!(x, y, xlims=(4, 6), ylims=(0, 10), label=label, title="Orange size and sale", ylabel="Size in cms", color="blue")

label = "Edible Fruit"
y = key_values[label]
x = fill(5, length(y))
scatter!(p, x, y, label=label, color="red")

label = "Luxury Hotels"
y = key_values[label]
x = fill(5, length(y))
scatter!(p, x, y, label=label, color="orange")
