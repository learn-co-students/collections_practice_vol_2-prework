def begins_with_r(tools)
  boolean_variable = nil
  tools.each do | tool |
    if tool[0] == "r" || tool[0] == "R"
      boolean_variable = true
    else
      boolean_variable = false
      return boolean_variable
    end
  end
end

def contain_a(array)
  "a"
end
