def line(curr_line)
    message = "The line is currently"

    if curr_line.length == 0
        message += ' empty.'
    else
        message += ':'
        curr_line.each_with_index do |name, index|
            message += " #{index + 1}. #{name}"
        end
    end
    puts message
end

def take_a_number(curr_line, name)
    curr_line.push(name)
    puts "Welcome, #{name}. You are number #{curr_line.index(name) + 1} in line."
end

def now_serving(curr_line)
    if curr_line.length === 0
        puts 'There is nobody waiting to be served!'
    else 
        puts "Currently serving #{curr_line[0]}."
        curr_line.shift
    end
    curr_line
end
