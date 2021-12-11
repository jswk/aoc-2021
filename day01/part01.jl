last_reading = missing
count_increasing = 0

for line in eachline()
    reading = parse(Int, line)
    if !ismissing(last_reading) && reading > last_reading
        global count_increasing += 1
    end
    global last_reading = reading
end

println(count_increasing)
