require 'pry'
def begins_with_r(tools)
  test = true
  tools.each do |first_letter|
    if first_letter[0] != "r"
       test = false
    end 
  end
test
end

def contain_a(cheat)
a = 
  cheat.each do |contain_a|
    if contain_a.include("a")
  << a
#binding.pry
    end
  end
  a
end