using DataFrames
using GLM
using Random
using Statistics

Random.seed!(1234)

df = DataFrame(randn(50, 9), :auto)
df.y = sum(eachcol(df)) .+ 1.0 .+ randn(50)

model = lm(formula, df)

# Calculate Mean Square Error of the model
deviance(model) / nrow(df)

mse(model, df) = sum(x->x^2, predict(model, df) - df.y) / nrow(df)
mse(model, df)

# Cross-validation
df.fold = shuffle!((1:nrow(df)) .% 10)

get_fold_data(df, fold) = 
 (train=view(df, df.fold .!= fold, :), 
  test=view(df, df.fold .== fold, :))

mean(0:9) do fold
    train, test = get_fold_data(df, fold)
    model_cv = lm(formula, train)
    return mse(model_cv, test)
end
