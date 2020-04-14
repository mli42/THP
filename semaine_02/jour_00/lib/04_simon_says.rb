def echo(str)
    return str
end

def shout(str)
    return str.upcase
end

def repeat(str, x = 2)
    return (str + " ") * (x - 1) + str
end

def start_of_word(str, x = 0)
    if x > 0
        x -= 1
    end
    return str[0..x]
end

def first_word(str)
    return str.split[0]
end

def titleize(str)
    no_cap = ["and", "or", "no", "not", "to", "a", "but", "the"]
    str = str.split
    str[0].capitalize!
    return str.map {|str| no_cap.include?(str) ? str : str.capitalize}.join(' ')
end
