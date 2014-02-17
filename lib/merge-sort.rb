
def merge(array)
  return array if array.count <= 1

  middle = array.count/2
  left = merge(array.slice(0, middle))
  right = merge(array.slice(middle, array.count - middle))

  array = []
  offset_l = 0
  offset_r = 0
  while offset_l < left.count && offset_r < right.count
    l = left[offset_l]
    r = right[offset_r]

    if l <= r   
      array << l
      offset_l += 1
    else 
      array << r 
      offset_r += 1
    end
  end 

  while offset_l < left.count
    array << left[offset_l]
    offset_l += 1
  end

  while offset_r < right.count
    array << right[offset_r]
    offset_r += 1
  end

  return array
end

ar = merge([6,33,42,8,100,13, 66, -85, 0.8])
puts ar