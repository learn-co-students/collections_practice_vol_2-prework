def begins_with_r(elements)
  elements.find { |element| not element.start_with?('r') } == nil
end

def contain_a(elements)
  elements.find_all{ |element| element.include?('a')}
end

def first_wa(elements)
  elements.find { |element| element.to_s.start_with?('wa') }
end

def remove_non_strings(elements)
  elements.reject { |element| element.class != String }
end

def count_elements(elements)
  counts = {}
  elements.each { |element|
	unless (counts.has_key?(element[:name]))
      counts[element[:name]] = {:name => element[:name], :count => 1}
    else
      counts[element[:name]][:count] += 1
    end
  }

  return counts.values
end


def merge_data(keys, data)
  merged_data = []
  keys.each { |key|
    merged_individual_data = data[0][key[:first_name]]
    merged_individual_data[:first_name] = key[:first_name]
    merged_data.push(merged_individual_data)
  }
  return merged_data
end

def find_cool(cool)
  cool.find_all { |dude| dude[:temperature] == "cool" }
end

def organize_schools(schools)
  organized_schools = {}
  schools.each_pair { |name, data|
    unless (organized_schools.has_key?(data[:location]))
      organized_schools[data[:location]] = [name]
    else
      organized_schools[data[:location]].push(name)
    end
  }
  return organized_schools
end 
