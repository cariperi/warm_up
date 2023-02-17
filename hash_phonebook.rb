# Hash Phonebook (Part 1): Create a phonebook using a hash! Your book/hash should have least 5 different people's phone numbers.

# Ex: phonebook = {"Adam": "555-1234", "Briona": "123-5555", "Charles": …}

# Then, write a method that adds a new entry to your phonebook.

# Ex: add_number("Name", "419-5540")

# At the end, you should have at least 6 total entries in your phonebook.

# Extension ideas:

# - Rolodex: Write a method that takes one string character, that returns all the entries that start with that character.Ex: rolodex("A") => { "Adam" : "555-1234" }
# - Random: Write a method that returns a random person to call from your phonebook.Ex: random() => { "Charles" : "855-1232" }

@phonebook = {
    Alice: '(123)456-7890',
    Kate: '(567)432-6849',
    Sam: '(924)584-2864',
    Hannah: '(284)264-2742',
    Bob: '(312)717-5623'
}

def add_number(name, number)
  @phonebook[name] = number
end

def rolodex(char)
  @phonebook.find_all{|name, number| name.to_s.start_with?(char)}
end

def random
  random_hash = {}
  person = @phonebook.keys.sample
  random_hash[person] = @phonebook[person]
  random_hash
end

add_number(:CP, '(203)331-2633')
p @phonebook.count
p rolodex('A')
p random