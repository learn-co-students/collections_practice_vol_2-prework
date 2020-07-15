def begins_with_r(arr)
  arr.all? {|e| e.downcase.start_with?("r")}
end

def contain_a(arr)
  arr.select {|e| e.downcase.include?("a")}
end

def first_wa(arr)
  remove_non_strings(arr).find {|e| e.downcase.start_with?("wa")}
end

def remove_non_strings(arr)
  arr.select {|e| e.class == String}
end

def count_elements(arr)
  uniq = arr.uniq
  uniq.map do |hash|
    count = 0
    while arr.include?(hash)
      count += 1
      i = arr.index(hash)
      arr.delete_at(i)
    end
    hash[:count] = count
  end
  uniq
end

def merge_data(arr1, arr2)
  arr1.each do |person|
    arr2.each do |hash|
      hash.each do |name, info|
        if person[:first_name] == name
          info.each do |k, v|
            person[k] = v
          end
        end
      end
    end
  end
end

def find_cool(arr)
  arr.select {|person| person[:temperature] == "cool"}
end

def organize_schools(data)
  organized = {}
  data.each do |school, info|
    organized[info[:location]] ||= []
    organized[info[:location]] << school
  end
  organized
end
