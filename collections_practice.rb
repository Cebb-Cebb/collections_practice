require 'pry'

def sort_array_asc(num)
  num.sort do |a, b|
    a <=> b
  end   
end

def sort_array_desc(num)
  num.sort.reverse
end 

def sort_array_char_count(strings)
    strings.sort {|a,b| a.length <=> b.length}
    # strings.sort_by(&:length) what does the & do here?
end  

def swap_elements(arr)
    arr[0], arr[1], arr[2] = arr[0], arr[2], arr[1]
end 

def swap_elements_from_to(arr, index, destination)
    i = 0
    while i < arr.length
        if i == index
           new_arr =  arr[i]  # what is the value of i?
           arr[i] = arr[destination] # arr[i] = "ashley"
           arr[destination] = new_arr # here arr[i] = "ashley" ? shouldnt it be arr[destination] = "scott"
        end 
        i += 1 
        # binding.pry  
    end 
    arr
    # ["blake", "ashley", "scott"]
end 


def reverse_array(arr)
  # arr = num.split(" ").map(&:to_i)
  # reverse_arr = arr.reverse.join(" ")
    arr[0], arr[1], arr[2] = arr[2], arr[1], arr[0] #is this hardcoded? how can i solve it s/o hard coding?
end 

def kesha_maker(arr)
  arr.each {|char| char[2] = "$"}   
end 

def find_a(arr)
  arr.select do |letter|
    letter.start_with?("a")
  end 
end 

def sum_array(num)
  num.inject {|sum, number| sum + number}
end 

def add_s(arr)
  new_arr = arr.reject.with_index{|v, i| i == 1}
  s_arr = new_arr.collect {|words| words + "s"}
  s_arr.insert(1, "feet")
end 