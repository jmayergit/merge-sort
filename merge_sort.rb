def merge(arr1,arr2,result)
  i = 0
  j = 0
  if arr1.length == 0
    result.insert(-1,arr2).flatten
  elsif arr2.length == 0
    result.insert(-1,arr1).flatten
  else
    if arr1[i] < arr2[j]
      add = arr1[i]
      merge(arr1[(i+1)..-1], arr2,(result.insert(-1,add)))
    else
      add = arr2[j]
      merge(arr1, arr2[(j+1)..-1],(result.insert(-1,add)))
    end
  end
end

def merge_sort(anArr)

  if anArr.length <= 1
    anArr
  elsif anArr.length == 2
    if anArr[0] == anArr[1]
      anArr
    elsif anArr[0] > anArr[1]
      anArr[0], anArr[1] = anArr[1], anArr[0]
    else
      anArr
    end
  else
    mid = (anArr.length) / 2
    merge(merge_sort(anArr[0...mid]),merge_sort(anArr[mid..-1]),[])
  end
end

p(merge_sort([2,1,5,3,4,10,90,66]))
