def substrings(str, dic)
  res = Hash.new(0)
  dic.each do |k_word|
    quen = str.downcase.scan(k_word).count
    res[k_word] = quen if quen > 0
  end
  res
end

dic = [
  "below","down","go",
  "going","horn","how",
  "howdy","it","i","low",
  "own","part","partner","sit"
]
p substrings("Howdy partner, sit down! How's it going?", dic)
