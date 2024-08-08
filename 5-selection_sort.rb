def selection_sort(array)
  
  i = 0
  while i < array.length
    smallest_element = array[i]
    smallest_index = i
    j = i + 1 
    while j < array.length
    if array[j] < smallest_element
      smallest_index = j
    end
      j += 1
    end
    array[i],array[smallest_index] = array[smallest_index], array[i]
    p array
    i += 1
     end
     return array
end

p selection_sort([65, 55, 45, 35, 25, 15, 10])