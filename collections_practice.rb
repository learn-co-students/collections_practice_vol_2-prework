def begins_with_r(array)
  var = true
  array.each do |x|
    if !(x.start_with?("r"))
      var = false
    end
  end
  var
end

def contain_a(array)
  new = []
  array.each do |x| new << x if x.include?("a") end
  new
end

def first_wa(array)
  array.find do |x| x[0] == "w" && x[1] == "a" end
end

def remove_non_strings(array)
  array.delete_if do |x| !(x.is_a? String) end
end

def count_elements(array)
  count = Hash.new(0)
  array.each do |x| count[x] += 1 end
  count
end

def merge_data
end

def find_cool
end

def organize_schools(array)
end