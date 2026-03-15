def bucket_sort(arr):
    if len(arr) == 0:
        return arr

    bucket_count = len(arr)
    buckets = [[] for _ in range(bucket_count)]

    for num in arr:
        index = int(bucket_count * num)
        if index == bucket_count:
            index -= 1
        buckets[index].append(num)

    for bucket in buckets:
        bucket.sort()

    result = []
    for bucket in buckets:
        result.extend(bucket)

    return result

arr = [0.42, 0.32, 0.33, 0.52, 0.37, 0.47, 0.51]
print(bucket_sort(arr))
