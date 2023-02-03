require 'rspec'

def sentence_array(string)
  words_array = string.split(" ")
  
  words_array.map do |word|
    if words_array.find_index(word) % 2 == 0
      word.capitalize!
    end
  end
  words_array.join(" ")
end

test_string = "The quick brown fox jumps over the lazy dog."
p sentence_array(test_string)


# testing practice
describe 'sentence_array' do
  it 'formats a sentence' do
    test_string = "the cat said hi"
    
    expect(sentence_array(test_string)).to eq("The cat Said hi")
  end
end