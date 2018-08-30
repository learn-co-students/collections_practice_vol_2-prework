require 'pry'
def begins_with_r(tools)
  tools.each do |first_letter|
   binding.pry
    if first_letter[0] == "r"
      return true
    end #binding.pry
  end
end
