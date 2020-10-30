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
    swap_elements_from_to([arr],2,1)
end 

