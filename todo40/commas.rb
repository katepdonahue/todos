def separate_with_comma(n)
  num = (n.to_s.size)/3
  num.times do
    n = n.to_s.gsub(/(?<=\d)(?=\d\d\d(\z|,))/, ",")
  end
  n.to_s
end