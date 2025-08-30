import Pkg
Pkg.activate(".")
Pkg.instantiate()
#using Plots


function dot_product(x, y)
    if length(x) == length(y)
        dot = 0
        for i in 1:length(x)
            dot += x[i]*y[i]
        end
        return dot

    else
        throw(DimensionMismatch("length of x not equal to length of y"))
    end
end
##### Testing dot product
#print(dot_product([1 2 3], [4 5 6]))

dot_product([1 2 3], [4 5])


##### Making a plot
x = []
y= []
for i in -5:5
    push!(x, i)
    push!(y, i*i)
end
#print(data)

plot(x, y)


