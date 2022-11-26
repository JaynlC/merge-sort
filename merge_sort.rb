
def mergesort(arr)
  size = arr.length
  sorted_arr = []
  if size < 2
    return arr
  else 
    first_split = arr[0...((size/2))]
    # p "firstsplit: #{first_split}"
    second_split = arr[(size/2)...size]
    # p "secondsplit: #{second_split}"
    first_sorted = mergesort(first_split)
    second_sorted = mergesort(second_split)
    # p "first half: #{first_sorted}"
    # p "second half: #{second_sorted}"
    until first_sorted.empty? || second_sorted.empty?
      first_sorted[0] < second_sorted[0] ? sorted_arr.push(first_sorted.shift) : sorted_arr.push(second_sorted.shift)
    end
    sorted_arr + first_sorted + second_sorted
  end
end