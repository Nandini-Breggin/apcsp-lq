def three_even(list)
    
    number = 0
    i = 0
    count = 0

    list.size.times do |num|
        if list[number] % 2 == 0
            if list[number] != list[i + 2]
                if list[number] != list[i - 2]
                    return true 
                end
            end
        else
            count += 1
        end
        i += 1
    end

    if count == list.size
        return false
    else
        return true
    end

end

# puts three_even([1, 1, 4, 6]) # false
# puts three_even([4, 2, 6, 5]) # true
# puts three_even([2, 4, 12, 5]) # true
# puts three_even([2, 2, 4]) # true
# puts three_even([]) # false


def sum(numbs)
    max = 0
    min = 0
    sum = 0
    total = 0
    numbs.each do |numb|
        sum = sum + numb
        if max <= numb
            max = numb
        end
        if numb == numbs[0]
            min = numb
        end
        if min >= numb
            min = numb
        end
        total = total + 1
    end
    total = sum
    return total
end

# puts sum([1, 2, 3, 4, 5, 6, 7, 8, 9])


def bigger_list(list1, list2)
    list1 = [sum(list1)]
    list2 = [sum(list2)]
    total = list1 + list2
    print total
end

puts bigger_list([1, 2], [3, 4]) # [3, 4]
puts bigger_list([1, 7], [4, 4]) # [1, 7]

