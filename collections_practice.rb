def begins_with_r(array)
  array.all? do |element|
    element.start_with?("r")
  end
end

def contain_a(array)
  array.select do |element|
    element.include?("a")
  end
end

def first_wa(array)
  array.each do |element|
    if element.to_s.start_with?("wa")
      return element
    end
  end
end

def remove_non_strings(array)
  array.delete_if do |element|
    element.class != "".class
  end
end

def count_elements(array)
  count = []
  array.uniq.each do |element|
    count.push(element.merge({count: array.count(element)}))
  end
  count
end

def merge_data(data_1, data_2)
  merged_data = []
  data_1.each do |element|
    element.each_value do |value|
      merged_data.push(element.merge(data_2[0][value]))
    end
  end
  merged_data
end

def find_cool(data)
  cool_hashes = []
  data.each do |element|
    if element.value?("cool")
      cool_hashes.push(element)
    end
  end
  cool_hashes
end

def organize_schools(data)
  organized_schools = {}
  locations = []
  data.each do |key, val|
    val.each do |keyy, vall|
      locations.push(vall)
    end
  end
  locations.uniq.each do |element|
    schools = []
    data.each do |key, val|
      val.each do |keyy, vall|
        if vall == element
          schools.push(key)
        end
      end
    end
    organized_schools[element] = schools
  end
  organized_schools
end
