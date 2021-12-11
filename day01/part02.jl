last_sum = missing
count_increasing_sums = 0
window = []

const window_size = 3

for line in eachline()
    reading = parse(Int, line)

    push!(window, reading)

    if length(window) == window_size
        curr_sum = sum(window)
        if !ismissing(last_sum)
            if curr_sum > last_sum
                global count_increasing_sums += 1
            end
        end

        global last_sum = curr_sum
        popfirst!(window)
    end
end

println(count_increasing_sums)
