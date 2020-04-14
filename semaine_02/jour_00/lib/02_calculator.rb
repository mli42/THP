def add(x, y)
    return x + y
end

def subtract(x, y)
    return x - y
end

def sum(tab)
    return tab.sum.to_i
end

def multiply(x, y)
    return x * y
end

def power(x, y)
    return x ** y
end

def factorial(x)
    if (x == 0)
        return 1
    end
    res = x
    while (x > 1)
        res *= (x - 1)
        x -= 1
    end
    return res
end
