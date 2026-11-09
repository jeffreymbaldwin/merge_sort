def merge_sort(array)
  return [] if array.empty?
  return array if array.size == 1

  divide_point = divide_point(array)

  left_half = array.slice(0, divide_point)
  right_half = array.slice(divide_point..)

  sorted_left = merge_sort(left_half)
  sorted_right = merge_sort(right_half)

  final_array = []

  while sorted_left.any? && sorted_right.any?
    if sorted_left.first < sorted_right.first
      final_array << sorted_left.shift
    else
      final_array << sorted_right.shift
    end
  end

  leftover_array = sorted_left.concat(sorted_right)

  leftover_array.each do |element|
    final_array << element
  end

  final_array

end


def divide_point(array)
  (array.size / 2.0).ceil
end

example_array = [3, 5, 6, 2, 100]
p merge_sort(example_array)
