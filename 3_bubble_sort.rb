
def bubble_sort(arr)
  
  sorted = false

  until sorted
    sorted = true
    i = 0
    while i < arr.length-1
      if arr[i+1] - arr[i] < 0
        arr[i], arr[i+1] = arr[i+1], arr[i]
        sorted = false
      end
      i += 1
    end
  end
  p arr
end

bubble_sort([65, 55, 45, 35, 25, 15, 10])