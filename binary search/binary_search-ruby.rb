def binarySearch(arr, val)
    lo = 0
    hi = arr.length - 1
    ctr = 0
    result = []
    while lo <= hi do
        mid = ((lo + hi) / 2)
        ctr+=1
        if arr[mid] < val
            lo = mid + 1
        elsif arr[mid] > val
            hi = mid - 1
        else
            result.push(mid)
            result.push(ctr)
            return result
        end
    end
    return [-1 ,ctr]
end