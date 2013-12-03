def version_sort(file_array)
  to_sort = []
  new_array = []
  # use regex capture for first and last characters
  # capture numbers? Then can compare by accessing in match array?
  file_array.each do |file|
    to_sort << (/foo-(\d*)\.{0,1}(\d*[a-z]{0,1})\.{0,1}(\d*)\.ext/).match(file)
  end
  sorted = to_sort.sort do |array1 ,array2| 
    if (array1[1].to_i <=> array2[1].to_i) == 0
      if (array1[2].to_i <=> array2[2].to_i) == 0
        (array1[3].to_i <=> array2[3].to_i)
      else
        (array1[2].to_i <=> array2[2].to_i)
      end
    else
      (array1[1].to_i <=> array2[1].to_i)
    end
  end
  sorted.each do |array|
    new_array << array[0]
  end
  new_array
end