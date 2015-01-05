def merge(arr1,arr2,result)
  """
  arr1 and arr2 must be sorted from low to high in order for result to be sorted
  """
  if arr1.length == 0
    result.insert(-1,arr2).flatten
  elsif arr2.length == 0
    result.insert(-1,arr1).flatten
  else
    if arr1[0] < arr2[0]
      add = arr1[0]
      merge(arr1[(1)..-1], arr2,(result.insert(-1,add)))
    else
      add = arr2[0]
      merge(arr1, arr2[(1)..-1],(result.insert(-1,add)))
    end
  end
end

def sort(anArr)

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
    merge(sort(anArr[0...mid]),sort(anArr[mid..-1]),[])
  end
end

p(sort([2,1,5,3,4,10,90,66]))
