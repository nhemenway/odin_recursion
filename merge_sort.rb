def merge_sort ( ary )
  return ary if ary.length == 1 
  left, right = ary.each_slice( (ary.length/2.0).round ).to_a
  merge(merge_sort(left), merge_sort(right))
end

def merge (left, right, result=[])
  until left.empty? || right.empty?
    result << (left[0] <= right[0] ? left.shift : right.shift)
  end
  result + left + right
end

p merge_sort([5,2,7,11,8,2,19,24,2,5,3])