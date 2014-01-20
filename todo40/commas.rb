def separate_with_comma(n)
  2.times do
    n = n.to_s.gsub(/(?<=\d)(?=\d\d\d(\z|,))/, ",")
  end
  n
end