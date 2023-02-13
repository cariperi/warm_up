
@states = {"Oregon" => "OR",
          "Alabama" => "AL",
          "New Jersey" => "NJ",
          "Colorado" => "CO"}

@capitals = {"OR" => "Salem",
            "AL" => "Montgomery",
            "NJ" => "Trenton",
            "CO" => "Denver"}

def get_state_abbreviation(state)
  @states[state]
end

def get_state_capital_from_abbrev(abbreviation)
  @capitals[abbreviation]
end

def get_state_capital_from_name(state)
  abbreviation = get_state_abbreviation(state)
  @capitals[abbreviation]
end


p get_state_abbreviation("Oregon")
p get_state_capital_from_abbrev("OR")
p get_state_capital_from_name("Oregon")