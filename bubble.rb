def bubble_sort(arr)
  arr.each_index do |index_0|
    return arr if index_0 == arr.length - 1   
    sub_array = arr[..(-index_0 - 1)]
    sub_array_length = sub_array.length
    sub_array.each_with_index do |item, index|
      break if index == sub_array_length - 1
      next_item = sub_array[index+1]
      if item > next_item
        sub_array[index + 1] = item
        sub_array[index] = next_item
      end
      arr[..(-index_0 - 1)] = sub_array
    end
  end

end

bubble_sort([10,4,3,78,2,0,2,1,7])
