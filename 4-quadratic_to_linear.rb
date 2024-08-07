
#to check duplicates
def quadratic(arr)
  i = 0
  j = 0
  while i <= arr.length
    while j <= arr.length
      if i != j && arr[i] == arr[j]
        return true
      end
      j += 1
    end
    i += 1
  end
  return false
end
puts quadratic([1,5,3,9,1,4])

def linear(arr)
  a = []
  i = 0
  while i <= arr.length
        if a.include?(arr[i])
          # p a
          return true
          break
        else
          a.push(arr[i])
        end
        i += 1
  end 
  return false
end
puts linear([10,5,3,9,10,4])
