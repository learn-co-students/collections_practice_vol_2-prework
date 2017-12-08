# your code goes here
def begins_with_r(array)
  array.all? do |word|
    word[0] == "r"
  end
end

def contain_a(array)
  new_array = []
  array.each do |word|
    if word.include?("a")
      new_array.push(word)
    end
  end
  new_array
end

def first_wa(array)
  array.find do |word|
    word[0] == "w" && word[1] == "a"
  end
end

def remove_non_strings(array)
  array.delete_if do |word|
    word != word.to_s
  end
end


# elements = [{name:"Jay"},{name:"Bam"},{name:"Jay"},{name:"Bam"},{name:"Jay"},{name:"Bam"},{name:"Amber"}]
# elements = ["Jay","Bam","Jay","Bam","Jay","Bam","Amber"]
# puts count_elements(elements)

def count_elements(elements)
  name_array = []
  name_hash = {}
  final_array = []

  elements.each {|element| name_array.push(element[:name])}

  name_array.each do |name|
    if name_hash.has_key?(name)
      name_hash[name][:count] += 1
    else
      name_hash[name] ||= {}
      name_hash[name][:name] = name
      name_hash[name][:count] = 1
    end
  end

  name_hash.each {|name, data| final_array.push(data)}
  final_array
end

def merge_data(keys, data)
  new_data = []
  data.each do |info|
    info.each do |name, attributes|
      keys.each do |kys|
        if kys.has_value?(name)
          new_data.push(attributes.merge(kys))
        end
      end
    end
  end
  new_data
end

keys =  [
  {:first_name => "blake"},
  {:first_name => "ashley"},
  {:first_name => "borat"}
]

data = [{
           "blake" => {
              :awesomeness => 10,
              :height => "74",
              :last_name => "johnson"
            },
            "ashley" => {
              :awesomeness => 9,
              :height => 60,
              :last_name => "dubs"
            },
            "borat" => {
              :awesomeness => 99,
              :height => 670,
              :last_name => "khazahsthanski"
            }
          }
]
# merge_data(keys,data)

def find_cool(cool)
  cool_array = []
  cool.each do |person|
    if person[:temperature] == "cool"
      cool_array.push(person)
    end
  end
  cool_array
end
cool = [
    {
      :name => "ashley",
      :temperature => "sort of cool"
    },
    {
      :name => "blake",
      :temperature => "cool"
    }
]
# puts find_cool(cool)

def organize_schools(schools)
  organized_hash = {}

  schools.each do |name, location|
    location.each do |loc,loc_name|
      organized_hash[loc_name] ||= []
      organized_hash[loc_name].push(name)
    end
  end
  organized_hash
end

schools = {
  "flatiron school bk" => {
    :location => "NYC"
  },
  "flatiron school" => {
    :location => "NYC"
  },
  "dev boot camp" => {
    :location => "SF"
  },
  "dev boot camp chicago" => {
    :location => "Chicago"
  },
  "general assembly" => {
    :location => "NYC"
  },
  "Hack Reactor" => {
    :location => "SF"
  }
}
organize_schools(schools)
