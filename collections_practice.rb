require 'pry'

def begins_with_r(tools_array)
  tools_array.collect do |element|
    if element.start_with?("r") == false
      return false
    end
  end
true
end

def contain_a(tools_array)
  array = []
  tools_array.collect do |element|
    if element.include?("a")
      array<<element
    end
  end
array
end

def first_wa(tools_array)
  tools_array.collect do |element|
    if element.start_with?("wa") == true
      return element
    end
  end
end
