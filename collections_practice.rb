require 'pry'
def begins_with_r(tools)
  test = true
  tools.each do |first_letter|
   #binding.pry
    if first_letter[0] != "r"
       test = false
    end 
  end
test
end
