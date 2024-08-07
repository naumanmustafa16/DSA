# Ordered List Binary Search

def binary_search(search_term,arr)
  
  ordered_array = arr.sort
  lower_bound = 0
  upper_bound = ordered_array.length - 1
  
  while lower_bound <= upper_bound
    midpoint = (upper_bound + lower_bound)/2
    value_at_midpoint = ordered_array[midpoint]

    if search_term == value_at_midpoint
      return midpoint
    elsif search_term < value_at_midpoint
      upper_bound = midpoint - 1
    elsif search_term > value_at_midpoint
      lower_bound = midpoint + 1
      end
    end
    return nil
  end
  
puts binary_search(45,[8,7,6,44,3,5,1])