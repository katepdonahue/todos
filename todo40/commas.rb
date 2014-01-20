def separate_with_comma(n)
  num = n/3.to_i
  num.times do
    n = n.to_s.gsub(/(?<=\d)(?=\d\d\d(\z|,))/, ",")
  end
  n.to_s
end