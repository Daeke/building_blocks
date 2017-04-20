def bubble_sort(array)
  array.each_with_index do |n, i|
    if i == array.size-1
      array
    else
      if n > array[i+1]
        array[i] = array[i+1]
        array[i+1] = n
        bubble_sort(array)
      end
    end
  end
end

def bubble_sort_by(array, &block)
  array.each_with_index do |n, i|
    if i == array.size-1
      return array
    else
      if yield(array[i], array[i+1]) > 1
        array[i] = array[i+1]
        array[i+1] = n
        bubble_sort_by(array, &block)
      end
    end
  end
end
    bubble_sort_by(["hi","hello","hey","whatsup","howareyou","welcome","yo"]) do |left,right|
     left.length - right.length
   end