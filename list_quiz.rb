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

puts three_even([1, 1, 4, 6]) # false
puts three_even([4, 2, 6, 5]) # true
puts three_even([2, 4, 12, 5]) # true
puts three_even([2, 2, 4]) # true
puts three_even([]) # false




def bigger_list(list1, list2)

end

