  def begins_with_r(array)
    i=0
    checker = 0
    while i < array.length  
      if array[i].to_s[0].downcase == 'r' 
        checker += 1
      
      end
        i += 1 
    end 

    if checker == i 
      return true
    else
      false
    end  
  end 
  
  
  def contain_a(array)
  return_array = []
    array.each do |i|
      if i.to_s.include? "a"
        return_array.push(i)
      end
    end     
  return_array
  end  
  
  
    def first_wa(array)
    array.each do |i|
      if i.to_s[0..1] == 'wa'
        return i 
      end
    end     
  end 
  
  def remove_non_strings(array)
    array.delete_if {|i| i != i.to_s } 
  array
  end  
  
  def count_elements(array)
      new_array = []
      
      array.each do |i|
        
        new_array.push({:name => i[:name],  :count => array.count(i)})
      end
      
      new_array.uniq
  end  
  
      def merge_data(hash_one, hash_two)
          hash_one.each do |object|
          matchingProperty = object[:first_name]
            puts object
            puts matchingProperty

        puts hash_two[0][matchingProperty]

        otherObject = hash_two[0][matchingProperty]
    
    otherObject.each do |property,value|

      object[property] = value

    end
  end

 end 
 
 
 def find_cool(hash)

  hash.each do |i,k|
    if i[:temperature] == 'cool'
      return [i]
    end
  end  
end



   def organize_schools(hash)
   new_hash = {}
      hash.collect { |i, k| 
      new_hash[k[:location]] =[]}

      new_hash.each do |key,value|
        hash.each do |key1, value1|
          if key == value1[:location]
          value << key1
          end
        end  
      end
      new_hash
   end