def begins_with_r(a)
  a.all? { |x| x[0] == "r" }
end

def contain_a(a)
  a.select { |x| x.scan(/[a]/).count > 0 }
end

def first_wa(a)
  a.find { |x| x[0..1] == "wa" }
end

def remove_non_strings(a)
  a.delete_if { |x| x.class != String }
end

def count_elements(a)
  count = []
  a.each do |x|
    x.each do |sym,name|
      count << {name: name, count: 0}
    end
  end
  count.uniq!
  a.each do |x|
    x.each do |sym,name|
      count.each do |c|
        c[:count] += 1 if name == c[:name]
      end
    end
  end
  count
end

=begin
# not sure why doing a simple countup wouldn't work just fine here
def count_elements(a)
  count = Hash.new(0)
  a.each { |x| count[x] += 1 }
  count
end
=end

def merge_data(keys, data)
  m = []
  keys.each do |x|
    data.each do |y|
      m << x.merge(y[x.values.join])
    end
  end
  m
end

def find_cool(h)
  h.each { |x| return [x] if x.values.include?("cool") }
end

def organize_schools(h)
  o = {}
  h.each do |school, l|
    l.each do |loc, city|
      o.keys.include?(city) ? o[city] << school : o[city] = [school]
    end
  end
  o
end
