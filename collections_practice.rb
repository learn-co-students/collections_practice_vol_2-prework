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
  a = cheat.collect do |contain_a|
    if contain_a.include?("a")
      contain_a
    end
  end
  a.compact
end


def first_wa(good)
   good.each do |contain_wa|
   #binding.pry
    if contain_wa.match(/wa/)
     return contain_wa
  #binding.pry
    end
  end
  
end



def remove_non_strings(array)
  array.grep(String)
end

def count_elements(array)
  count = 0
  array.each |element|
  count += 1
#binding.pry
  end
  count
end

