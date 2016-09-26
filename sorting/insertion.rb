def insert(array)
  array.each_with_index do |_a, i|
    next if i.zero?
    while array[i] < array[i - 1]
      array[i], array[i - 1] = array[i - 1], array[i]
      i -= 1
      break if i.zero?
    end
  end
  array
end
