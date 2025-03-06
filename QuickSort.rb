def quick_sort(arr)
  return arr if arr.length <= 1
  pivot = arr[arr.length / 2]
  left = arr.select { |x| x < pivot }
  middle = arr.select { |x| x == pivot }
  right = arr.select { |x| x > pivot }
  quick_sort(left) + middle + quick_sort(right)
end

arr = [34, 7, 23, 32, 5, 62]
puts quick_sort(arr).to_s