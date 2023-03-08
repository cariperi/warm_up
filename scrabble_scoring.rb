scores = {
  "A"=>1, "B"=>3, "C"=>3, "D"=>2,
  "E"=>1, "F"=>4, "G"=>2, "H"=>4,
  "I"=>1, "J"=>8, "K"=>5, "L"=>1,
  "M"=>3, "N"=>1, "O"=>1, "P"=>3,
  "Q"=>10, "R"=>1, "S"=>1, "T"=>1,
  "U"=>1, "V"=>4, "W"=>4, "X"=>8,
  "Y"=>4, "Z"=>10
}

# word = ['H', 'E', 'L', 'L', 'O']

# # Level 1

# def letter_scoring_array(array, scores)
#   array.each do |letter|
#     puts "#{letter} has the value #{scores[letter]}"
#   end
# end

# letter_scoring_array(word, scores)

# Level 2 + 3

word = "hello"

def letter_scoring_string(string, scores)
  string.split("").each do |letter|
    letter = letter.upcase
    puts "#{letter} has the value #{scores[letter]}"
  end
end

def total_score_string(string, scores)
  score = 0
  string.split("").each do |letter|
    letter = letter.upcase
    score += scores[letter]
  end
  puts "#{string} has the total score #{score}"
end

#letter_scoring_string(word, scores)
total_score_string(word, scores)
