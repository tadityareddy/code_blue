# Determine if the orange should be sent to luxury hotels, retail as edible fruit, or juice factories.
# Label one of these using a simulation function.

function category(orange_size)
    if orange_size > 6
        return "Luxury Hotels"
    end
    if orange_size > 4
        return "Edible Fruit"
    end
    return "Juice"
end
