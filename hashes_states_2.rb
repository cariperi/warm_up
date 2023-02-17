@states = {"Oregon" => "OR",
          "Alabama" => "AL",
          "New Jersey" => "NJ",
          "Colorado" => "CO"}

@capitals = {"OR" => "Salem",
            "AL" => "Montgomery",
            "NJ" => "Trenton",
            "CO" => "Denver"}

def get_state_capital_from_name(state)
  abbreviation = @states[state]
  @capitals[abbreviation]
end

def get_state_name_from_capital(capital)
  abbreviation = @capitals.key(capital)
  @states.key(abbreviation)
end

p get_state_capital_from_name("Oregon")
p get_state_name_from_capital("Trenton")

