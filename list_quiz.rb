def three_even(list)

    i = 0

    list.size.times do |num|
        # Changes to integer
        if num.to_i % 2 == 0
            # Checks each value
            if list[i + 1].to_i % 2 == 0
                # Checks the value and makes sure that the value isn't beyond the ones in the list.
                if list[i + 2].to_i % 2 == 0 && i + 2 < list.size
                    return true 
                end
            end
        end
        i += 1
    end
    return false

end

puts three_even([2, 1, 3, 5]) # false
puts three_even([2, 4, 12, 5]) # true
puts three_even([2, 1, 4, 6]) # false
puts three_even([1, 4, 6, 4]) # true
puts three_even([]) # false


# # I don't need the sum loop... I over complicated it.
def bigger_list(list1, list2)
    # finding the sum of the first list and the sum of the second list
    sum1 = list1[0].to_i + list1[1].to_i
    sum2 = list2[0].to_i + list2[1].to_i

    # seeing which list has the greater sum
    if sum1 > sum2
        return list1
    elsif sum2 > sum1
        return list2 
        # returning the first list if the values are the same
    else
        return list1
    end
end

print bigger_list([1, 2], [3, 4]) # [3, 4]
print bigger_list([1, 7], [4, 4]) # [1, 7]


# I didn't start series_up on quiz day # This is my code for today 
def series_up(num)
    seq = 0
    list = []

    num.times do |pat|
        t = 0
        num.times do |num|
            list[t + seq] = t + 1 
            t += 1
        end
        # makes it so that it adds on to the first one (grows exponentially)
        seq += pat + 1
    end
    return list
end

print series_up(1) # [1]
print series_up(2) # [1, 1, 2]
print series_up(3) # [1, 1, 2, 1, 2, 3]
print series_up(4) # [1, 1, 2, 1, 2, 3, 1, 2, 3, 4]
print series_up(5) # [1, 1, 2, 1, 2, 3, 1, 2, 3, 4, 1, 2, 3, 4, 5]