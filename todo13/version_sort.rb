def version_sort(file_array)
  to_sort = []
  new_array = []
  # use regex capture for first and last characters
  # capture numbers? Then can compare by accessing in match array?
  file_array.each do |file|
    to_sort << (/foo-(\d*)\.{0,1}(\d*[a-z]{0,1})\.{0,1}(\d*)\.ext/).match(file)
  end
  # match array [whole thing, ||1st number, ||2nd number, ||letter, ||3rd number]
  first = to_sort.sort_by { |array| array[1].to_i} # then split this into a bunch of arrays grouped based on same array[1] vals
  #  second = to_sort.sort_by { |array| array[2].to_i } # how to move it to the front if it's nil
  # third = second.sort_by { |array| array[3]}
  first.each do |array|
    new_array << array[0]
  end
  new_array
end