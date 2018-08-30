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
  wa = good.collect do |contain_wa|
    if contain_wa.include?("wa")
      contain_wa
    end
  end
  wa.compact
end