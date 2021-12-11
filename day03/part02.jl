line_len = missing
occurrences = missing

input = readlines()
line_len = length(input[1])

oxygen_str = missing
prefix = ""

for i in range(1, line_len)
    counter = 0
    sum = 0
    for line in input
        if startswith(line, prefix)
            counter += 1
            if line[i] == '0'
                sum -= 1
            elseif line[i] == '1'
                sum += 1
            else
                println("Invalid input: line=" * line)
                exit(2)
            end
            global oxygen_str = line
        end
    end
    if counter == 1
        break
    elseif sum >= 0
        global prefix *= '1'
    else
        global prefix *= '0'
    end
end

scrubber_str = missing
prefix = ""

for i in range(1, line_len)
    counter = 0
    sum = 0
    for line in input
        if startswith(line, prefix)
            counter += 1
            if line[i] == '0'
                sum -= 1
            elseif line[i] == '1'
                sum += 1
            else
                println("Invalid input: line=" * line)
                exit(2)
            end
            global scrubber_str = line
        end
    end
    if counter == 1
        break
    elseif sum >= 0
        global prefix *= '0'
    else
        global prefix *= '1'
    end
end

function to_num(str::String)::Int
    val = 0
    for c in str
        val *= 2
        if c == '1'
            val += 1
        end
    end
    return val
end

oxygen = to_num(oxygen_str)
scrubber = to_num(scrubber_str)

println(oxygen * scrubber)
