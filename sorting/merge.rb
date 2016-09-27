def merge(arr)
  return arr if arr.size <= 1

  mid = arr.count / 2
  part1 = merge arr.slice(0, mid)
  part2 = merge arr.slice(mid, arr.count - mid)

  placeholder = []

  offset1 = 0
  offset2 = 0

  while offset1 < part1.count && offset2 < part2.count
    a = part1[offset1]
    b = part2[offset2]

    # Take the smallest of the two, and push it on our array
    if a <= b
      placeholder << a
      offset1 += 1
    else
      placeholder << b
      offset2 += 1
    end
  end

  # There is at least one element left in either part_a or part_b (not both)
  while offset1 < part1.count
    placeholder << part1[offset1]
    offset1 += 1
  end

  while offset2 < part2.count
    placeholder << part2[offset2]
    offset2 += 1
  end
  placeholder
end
