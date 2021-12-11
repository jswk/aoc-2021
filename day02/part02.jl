x = 0
y = 0
aim = 0

for line in eachline()
    cmd, val = split(line)
    val_int = parse(Int, val)

    if cmd == "forward"
        global x += val_int
        global y += aim * val_int
    elseif cmd == "down"
        global aim += val_int
    elseif cmd == "up"
        global aim -= val_int
    end
end

println(x*y)
