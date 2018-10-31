require "pry"

def begins_with_r(array)
  array.all? {|word| word.start_with?("r")}
end

def contain_a(array)
  array.select {|word| word.include?("a")}
end

def first_wa(array)
  array.find {|word| word.to_s.start_with?("wa")}
end

def remove_non_strings(array)
  array.select {|element| element.is_a?(String)}
end

def count_elements(array)
      #  []{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}]
      # [{:count=>2, :name=>"blake"}, {:count=>1, :name=>"ashley"}]
#       def count_elements(array)
#  counts = Hash.new(0)
#  array.collect {|element| counts[element]+=1 }
#    counts.collect do |hash, number|
#      hash[:count] = number
#    end
#  counts.keys
# end


  new_array = []
  array.uniq.each do |el|
    hash = {}
    hash[:count] = array.count(el)
    hash.merge!(el)
    new_array << hash
  end
  new_array
end

def merge_data(data, keys)

  keys[0].map do|name, info|
    new_hash = {}
    new_hash[:first_name] = name
    new_hash.merge(info)
  end
end

def find_cool(arg)
  #1 iterate through array
  #2 check values of Hash
  #3 if it == cool then

  new_array = []
  arg.each_with_index do|key, index|
    if key.has_value?("cool")
      new_array << arg[index]
    end
  end
  new_array
end




def organize_schools(schools)
  #iterate through each Hash
  # city = key SF => []
  # if key == city
  #push
  #schools =
   # {
  #   "flatiron school bk" => {
  #     :location => "NYC"
  #   },
  #   "flatiron school" => {
  #     :location => "NYC"
  #   },
  #   "dev boot camp" => {
  #     :location => "SF"
  #   },
  #   "dev boot camp chicago" => {
  #     :location => "Chicago"
  #   },
  #   "general assembly" => {
  #     :location => "NYC"
  #   },
  #   "Hack Reactor" => {
  #     :location => "SF"
  #   }

  # test = {"NYC"=>["flatiron school bk", "flatiron school", "general assembly"],
  #  "SF"=>["dev boot camp", "Hack Reactor"],
  #  "Chicago"=>["dev boot camp chicago"]}
   #do opposite - iterate through
   #iterate through info
   #find city
   #make it keyword
   # find all schools with city keyword
   # push to key
   #what we did was... go line by line put a binding.pry above the code and it returned nil.
   #then it's like hey = if nil then make a new one.  If not just shove it inside.  Don't over-write it.
   new_hash = {}
       schools.each do|school, place|
          if new_hash[place[:location]] == nil
            new_hash[place[:location]] = []
            new_hash[place[:location]] << school
          else
            new_hash[place[:location]] << school
          end
       end
       new_hash
    end

# hash of an array with one element of a hash with 2 keys.  each key has 3 key value pairs
