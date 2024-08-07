# Ordered List Linear Search

def order_list_search(search_term,arr)
  
  ordered_array = arr.sort
  ordered_array.each_with_index do |term, index|
    if term == search_term
      return index
    elsif term > search_term
      break
    end
  end
  return nil
end

puts order_list_search(5,[8,7,6,44,3,5,1])
