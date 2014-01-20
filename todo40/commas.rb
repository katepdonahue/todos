def separate_with_comma(n)
  n = n.to_s
  num = (n.size)/3
  num.times do
    n = n.gsub(/(?<=\d)(?=\d\d\d(\z|,))/, ",")
  end
  n
end