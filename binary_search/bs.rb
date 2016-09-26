def search(arr, a, lo = 0, hi = arr.length - 1)
  return -1 if hi < lo

  mid = lo + (hi - lo) / 2
  return search(arr, a, lo, mid - 1)  if a < arr[mid]
  return search(arr, a, mid + 1, hi)  if a > arr[mid]
  mid
end
