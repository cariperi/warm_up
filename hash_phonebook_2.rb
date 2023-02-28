# Hash Phonebook PART DEUX: Create a phonebook using a hash! Your book/hash should have least 5 different people's phone numbers.
# The phone numbers should be represented by **arrays**.Ex: phonebook = {"Adam": [555, 1234], "Briona": [123, 5555], "Charles": …}

# Then, write a method that adds a new entry to your phonebook.
# Ex: add_number("Name", [419, 5540])Finally, write a method that takes a string name, and returns a formatted phone number.Ex: call("Adam") => "555-1234"

# Extension ideas:

# - If your `call` method can't find that name, it should return "Sorry, can't find that contact."
# - If your `call` method has multiple of the same name, it should return "Which one would you like to dial? " and then list all entries.
# - If you didn't use classes for this solution... why not? ;)

class Person
  attr_reader :name, :phone

  def initialize(name, phone)
    @name = name
    @phone = phone
  end
end

class PhoneBook
  attr_reader :book

  def initialize
    @book = {}
  end

  def add_number(person)
    @book[person.name] = person.phone
  end

  def call(person_name)
    if !@book.keys.include?(person_name)
      return 'Sorry, cannot find that contact.'
    elsif @book.keys.find_all{|name| name == person_name}.count > 1
      numbers = @book.find_all{|k,v| v if @book[k] == person_name}
      return "Which one would you like to dial? Your choices include: #{numbers}"
    else
      @book[person_name].map{|digits| digits.to_s}.join("-")
    end
  end
end


kate = Person.new("Kate", [444, 1234])
kate_2 = Person.new("Kate", [111, 1234])
bob = Person.new("Bob", [555, 1642])
cindy = Person.new("Cindy", [123, 6543])
alex = Person.new("Alex", [123, 9887])
lauren = Person.new("Lauren", [321, 5634])

phonebook = PhoneBook.new
phonebook.add_number(kate)
phonebook.add_number(bob)
phonebook.add_number(cindy)
phonebook.add_number(alex)
phonebook.add_number(lauren)

p phonebook.book
p phonebook.call("John")
p phonebook.call("Cindy")
p phonebook.call("Kate")
