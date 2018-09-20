require 'pry'
def begins_with_r(array)
  array.all? do |word|
    word.downcase.chr == "r"
  end
end

def contain_a (array)
  array.select {|element| element.include?("a")}
end

def first_wa(array)
  array.find {|word| word.to_s.start_with?("wa")}
end

def remove_non_strings(array)
  array.reject {|element| element.class != String}
end
def count_elements(array)
  answer=[]
  new_array=array.uniq
  new_array.each do |x|
  h3=x.merge({:count=>array.count(x)})
  answer.push(h3)
   
   
    end
    return answer
  end
