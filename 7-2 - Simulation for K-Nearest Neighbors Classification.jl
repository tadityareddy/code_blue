using DataFrames
using GLM
using Random

mse(model, df) = sum(x->x^2, predict(model, df) - df.y) / nrow(df)
mset(model) = 1 + sum(x -> (1 - x) ^ 2, coef(model))

get_fold_data(df, fold) = 
 (train=view(df, df.fold .!= fold, :), 
  test=view(df, df.fold .== fold, :))

function runtest(id)
    df = DataFrame(randn(50, 9), :auto)
    df.y = sum(eachcol(df)[1:5]) .+ 1.0 .+ randn(50)
    formulas = [Term(:y) ~ sum([Term(Symbol(:x, i)) for i in 1:n]) for n in 1:9]
    models = [lm(f, df) for f in formulas]
    mse_wholes = [mse(m, df) for m in models]
    mse_ts = [mset(m) for m in models]
    df.fold = shuffle!((1:nrow(df)) .% 10)
    mse_cvs = map(formulas) do f
        return mean(0:9) do fold
            train, test = get_fold_data(df, fold)
            model_cv = lm(f, train)
            return mse(model_cv, test)
        end
    end
    return DataFrame(id=id, vars=1:9, mse_whole=mse_wholes, mse_cv=mse_cvs, mse_t=mse_ts)
end

Random.seed!(12)
res = DataFrame([runtest() for _ in 1:10_000])

describe(res, :all)
cor(Matrix(res))
