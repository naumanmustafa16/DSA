def insertion_sort(array)
  
  i = 1
  while i < array.length
    temp = array[i]
    j = i-1
    while j >= 0
      # p array
      if array[j] > temp
        array[j + 1] = array[j]     
        p array
        j -= 1
      else
        break
      end
    end
    array[j + 1] = temp
    i += 1
  end
  return array
end

p insertion_sort([65, 55, 45, 35, 25, 15, 10])