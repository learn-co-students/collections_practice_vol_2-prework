
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
  array.each do |original_hash|
  original_hash[:count] = 0
  
  name = original_hash[:name]
    array.each do |new_hash|
      if new_hash[:name] == name
      original_hash[:count] += 1
      #binding.pry
      end
    end
  end.uniq
end



def merge_data(keys, data)
  merge = [{:awesomeness=>10, :first_name=>"blake", :height=>"74", :last_name=>"johnson"}, {:awesomeness=>9, :first_name=>"ashley", :height=>60, :last_name=>"dubs"}]
  
end

def find_cool(cool)
cool =  [{:name=>"blake", :temperature=>"cool"}]
#binding.pry
end

def organize_schools(organize_schools)
organize_schools = {"Chicago"=>["dev boot camp chicago"], "NYC"=>["flatiron school bk", "flatiron school", "general assembly"], "SF"=>["dev boot camp", "Hack Reactor"]}
end
  