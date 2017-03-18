def begins_with_r(array)
array.all? {|name| name.start_with?("r")}
end

def contain_a(array)
array.select do |name| name.include?("a") end
end

def first_wa(array)
array.find {|word| word.to_s.start_with?("wa")}
end

def remove_non_strings(array)
array.delete_if {|elem| !elem.instance_of?(String)}
end

def count_elements(array)
 array.group_by(&:itself).map do |key, value| key.merge(count: value.length)
# .group_by(&:itself) puts all the identical elements in a hash under the same key
# .map to apply that code to every element in the hash
# .merge will take two hashes and piece them together into a single hash
  end
end

def merge_data(keys, data)
merged = []
  keys.each do |hashes|
    data.each do |attributes|
      attributes.each do |name, value|
        if hashes[:first_name] == name
          merged << hashes.merge(value)
        end
      end
    end
  end
merged
end

def find_cool(array)
cool_group = []
  array.each do |i|
    i.each do |k, v|
      if k = :temperature and v == "cool"
        cool_group << i
      end
    end
  end
  cool_group
end

def organize_schools(schools)
  organized_schools = { }
  schools.each do |school_names, locations|
    locations.each do |location, value|
      if organized_schools[value].nil?
        organized_schools[value] = [ ]
        organized_schools[value] << school_names
      else
        organized_schools[value] << school_names
      end
    end
  end
  organized_schools
end


#  let(:organized_schools) {
#   {"NYC"=>["flatiron school bk", "flatiron school", "general assembly"],
#    "SF"=>["dev boot camp", "Hack Reactor"],
#    "Chicago"=>["dev boot camp chicago"]}
# }

# let(:schools) {
#   {
#     "flatiron school bk" => {
#       :location => "NYC"
#     },
#     "flatiron school" => {
#       :location => "NYC"
#     },
#     "dev boot camp" => {
#       :location => "SF"
#     },
#     "dev boot camp chicago" => {
#       :location => "Chicago"
#     },
#     "general assembly" => {
#       :location => "NYC"
#     },
#     "Hack Reactor" => {
#       :location => "SF"
#     }
#   }
# }
#
