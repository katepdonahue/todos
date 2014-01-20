def separate_with_comma(n)
  n.to_s.gsub(/(?=\d\d\d\z)/, ",")
end