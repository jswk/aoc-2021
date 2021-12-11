line_len = missing
occurrences = missing

for line in eachline()
    if ismissing(line_len)
        global line_len = length(line)
        global occurrences = zeros(Int16, line_len)
    elseif length(line) != line_len
        println("Incorrect length: line=" * line)
        exit(1)
    end

    it = 1
    while it <= line_len
        if line[it] == '0'
            occurrences[it] -= 1
        elseif line[it] == '1'
            occurrences[it] += 1
        else
            println("Invalid input: line=" * line)
            exit(2)
        end

        it += 1
    end
end

γ = 0
ε = 0

for val in occurrences
    global γ *= 2
    global ε *= 2

    if val > 0
        global γ += 1
    elseif val < 0
        global ε += 1
    else
        println("A tie!")
        exit(3)
    end
end

println(γ)
println(ε)
println(γ * ε)
