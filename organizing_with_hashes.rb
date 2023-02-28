# Organizing with Hashes! Create a Hash that stores all the items on your desk.
# Anything that has more than 1 thing inside should be represented by its own key/value pair.
# Single items ("pen") can be described in its value ("pen" => "black").

# Ex: desk = { "pencil": "#2", :mousepad => ["mouse", "wrist rest"], :computer => ["chip", "fan"], …}

# Then, write a method that lists the items out in order. If an item has more than 1 thing inside of it, make it display underneath and tabbed over:

# Ex:
# Pencil

# Mousepad:
# Wrist rest
# Mouse

# Computer:
# Chip
# Fan

# Extension ideas:

# - Make your method list the items out in alphabetical order, no matter their original ordering.
# - Create methods that can add and remove items from your desk hash.

class Desk
  attr_reader :contents

  def initialize
    @contents = {}
  end

  def add_items(item, description)
    if description.count == 1
      @contents[item] = description[0]
    else
      @contents[item.to_sym] = description
    end
  end

  def list_items
    @contents.each do |item, sub_items|
      if sub_items.class == String
        puts item
      else
        puts "#{item}:" + "\n" + "#{sub_items.join("\n")}"
      end
    end
  end
end

desk = Desk.new

desk.add_items("pencil", ["#2"])
desk.add_items("mousepad", ["mouse", "wrist rest"])
desk.add_items("computer", ["chip", "fan"])

p desk.contents
p desk.list_items

