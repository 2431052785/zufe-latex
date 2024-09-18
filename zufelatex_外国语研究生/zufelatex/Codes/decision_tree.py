def quicksort(arr):
	if len(arr) <= 1:
		return arr
	pivot = arr[len(arr) // 2]
	left = [x for x in arr if x < pivot]
	middle = [x for x in arr if x == pivot]
	right = [x for x in arr if x > pivot]
	return quicksort(left) + middle + quicksort(right)

arr = [3, 6, 8, 10, 1, 2, 1, 4, 7, 9]
sorted_arr = quicksort(arr)
print(sorted_arr) 