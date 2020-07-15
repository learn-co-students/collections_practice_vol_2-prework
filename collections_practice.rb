
def begins_with_r(array)
  array.all? { |word| word.start_with?('r') }
end


def contain_a(array)
  array.select { |word| word.include?('a') }
end


def first_wa(array)
  array.find { |word| word.to_s.start_with?('wa')  }
end
                          

                          #------ updated
def remove_non_strings(array)
  array.select {|element| element.class == String}
end

                          #------ updated

def count_elements(array)
  result = array.uniq
    #result = {:name=>"blake"}, {:name=>"ashley"}, arr still holds original value
  result.map do |name_hash|
    name_hash[:count] = array.count(name_hash)
  #{name: "blake", count: (how many {:name => "blake"}?)}
  end
  result
end


=begin
                         #----original ----
def count_elements(array)
  array.map do |element_hash|
    element_hash[:count] = 0  #create new key/val pair for each orig_hash element
    array.map do |updated_hash|  #go thru new hash
      if updated_hash[:name] == element_hash[:name]
        element_hash[:count] += 1
      end
    end
  end
  array.uniq # remove repeated/duplic. elements => new array
end
=end


                          #------ updated

  def merge_data(keys, data)
    final = []
    keys.map do |names|    # {:first_name=>"blake"}
      name = names[:first_name]   # name = "blake"
      data.map do |data_hash|
        final << names.merge(data_hash[name])
        # {:first_name=>"blake"} + {:awesomeness=>10..}
      end
    end
   final
  end

=begin
                          #------ original
def merge_data(keys, data)
  merged_array = []
  keys.map do |name_hash|
    name = name_hash[:first_name]
    data.map do |data_hash|     
     if data_hash[name] # does the hash have a name key < 'blake' >
       merged_data = data_hash[name] # { :awesomeness => 10, :height =>...}
       merged_data[:first_name] = name # now add k/v pair < :first_name => 'blake' >
       merged_array << merged_data # merge above hash into array
     end
   end
 end
 merged_array
end
=end



                          #------ updated
def find_cool(array)
  array.select { |person| person.has_value?("cool")}
end


                          #------ updated

def organize_schools(schools)
  final = {}
  schools.map do |name, location_hash| #"flatiron school bk", :location => "NYC"
    location = location_hash[:location]
    # location = 'NYC'
    final[location] ||= [] #assign [] if no value
    final[location] << name #push NYC into []
        #NYC => [] << 'flatiron school'
  end
  final
end


=begin
                          ------- #original ------
def organize_schools(schools)
  organized_schools = {}
  schools.each do |name, location_hash| # "flatiron school bk" => { :location => "NYC" }
    
    city = location_hash[:location] # var city = string city name
    
    if organized_schools[city] # if {"NYC", "SF"... }
      organized_schools[city] << name # just add city array vals --> "NYC"=>["flatiron school bk",..]

    else organized_schools[city] = [] << name  #else create var/array pair {"NYC"=>["flatiron school bk"..],.. b }
    end
  end
  organized_schools
end
=end



