def who_is_bigger(a, b, c)
    if a == nil || b == nil || c == nil
        return "nil detected"
    end
    hash = {a: a, b: b, c: c}
    max = hash.max_by{|k,v| v}[0]
    return "#{max} is bigger"
end

def reverse_upcase_noLTA(str)
    return str.reverse.upcase.delete('LTA')
end

def array_42(array)
    return array.include?(42)
end

def magic_array(array)
    # flatten : no more arrays in an array
    # uniq : remove each number duplicated
    # compact : remove each nil elements
    return array.flatten.sort.map{|x| if (x % 3 != 0) then x * 2 end}.uniq.compact
end
