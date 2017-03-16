# your code goes here
def begins_with_r(array)
  array.all? { |array| array.start_with?("r")}
end

def contain_a(array)
  array.select { |array| array.include?("a")}
end

def first_wa(array)
  array.find { |array|  (array.is_a? String) && (array.start_with?("wa")) }
end

def remove_non_strings(array)
  array.delete_if { |array| (array.is_a? Symbol) || (array.is_a? Integer) }
end

def count_elements(array)
   array.group_by(&:itself).map{|k, v| k.merge(count: v.length)}
end
