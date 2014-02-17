def  merge_sort(array)
  return array if array.count <= 1

  middle = array.count/2
  left = array.slice(0, middle)
  right = array.slice(middle, array.count - middle)

  array = []
  offset_l = 0
  offset_r = 0
  while offset_l < part_l.count && offset_r < part_r.count
    l = part_l[offset_l]
    r = part_r[offset_r]

    if l <= r   
      array << l
      offset_l += 1
    else 
      array << r 
      offset_r += 1
    end
  end 

  while offset_l < part_l.count
    array << part_l[offset_l]
    offset_l += 1
  end

  while offset_r < part_r.count
    array << part_r[offset_r]
    offset_r += 1
  end

  return array

end 