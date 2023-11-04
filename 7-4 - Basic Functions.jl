# Count occurrences of elements in an array.

function counter(array_of_elements)
    counts = Dict()
    for element in array_of_elements
        counts[element] = get(counts, element, 0) + 1
    end
    counts
end
