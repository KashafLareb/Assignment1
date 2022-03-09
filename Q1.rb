# Input: ["ahffaksfajeeubsne", "jefaa"]
# Output: aksfaje
# Input: ["aaffhkksemckelloe", "fhea"]
# Output: affhkkse
str1 = "ahffaksfajeeubsne"
sub_str1 = "jefaa" 
str2 = "aaffhkksemckelloe"
sub_str2 = "fhea"

def show_compressed_window(str_matched, str)
    
    i = str_matched.min

    while (i<=str_matched.max)
        puts str[i]
        i = i.next
    end
    
end

def other_occurence_of(n, value, str, marked_indices_of_str)
    n.times do |i|
        if (value == str[i] && marked_indices_of_str[i]!=true)
            return i
        end
    end
    return nil
end

def compress_window(str_matched, sub_str, str, marked_indices_of_str)

    no_of_iter = (str_matched.max - str_matched.min) + 1
    other_index=0

    str_matched.length.times do |i|
        other_index=other_occurence_of(no_of_iter, str[str_matched[i]], str, marked_indices_of_str)

        if (other_index)
            str_matched[i]=other_index
        end

    end
    
    show_compressed_window(str_matched,str)


end

def getting_unique_str_indices(marked_indices_of_str, sub_str, str)
    
    str_matched = []

    sub_str.length.times do |i|
        j = 0

            while (sub_str[i]!=str[j] || marked_indices_of_str[j]==true)
                j = j.next
            end
            str_matched[i]=j
            marked_indices_of_str[j] = true

    end

    compress_window(str_matched, sub_str, str, marked_indices_of_str)

end

def marking_str_indices(str, sub_str)

    marked_indices_of_str = []

    str.length.times do |i|
        marked_indices_of_str[i] = [false]
    end

    getting_unique_str_indices(marked_indices_of_str, sub_str, str)

end

def get_compressed_window(str, sub_str)
    marking_str_indices(str, sub_str)
end

get_compressed_window(str2, sub_str2)

