def separate_with_comma(n)
  n = n.to_s
  (n.size)/3.times do
    n = n.gsub(/(?<=\d)(?=\d\d\d(\z|,))/, ",")
  end
  n
end