x = 0
y = 0

for line in eachline()
    cmd, val = split(line)
    val_int = parse(Int, val)

    if cmd == "forward"
        global x += val_int
    elseif cmd == "down"
        global y += val_int
    elseif cmd == "up"
        global y -= val_int
    end
end

println(x*y)
