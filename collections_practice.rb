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
  
  def merge_data(keys,data)
    answer=[]
    keys.each do |x|
      x.each do |y,z|
        data.each do |xx|
          xx.each do |yy,zz|
            if yy==z
              answer.push(x.merge(zz))
            end
        end
      end
    end
  end
  return answer
end

def find_cool(input)
  answer=[]
  input.each do |x|
if x.values_at(:temperature)[0]=="cool"
      answer.push(x)
end
end
answer
end


def organize_schools(input)
  newhash=Hash.new
  input.each do |x,y|
    y.each do |w,z|
      if newhash[z]==nil
      newhash[z]=[x]
    else

      newhash[z].push(x)
      
    end
  end
  
end
return newhash
end