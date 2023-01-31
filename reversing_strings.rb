def reversing_strings(string)
  #string.reverse
  result = []
  string.split("").each do |char|
    result.unshift(char) 
  end
  result.join
end

p reversing_strings('world')
p reversing_strings('wo rd*')
p reversing_strings('the cat jumped!')