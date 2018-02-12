# your code goes here
def begins_with_r(array)
  out = true
  array.each do |x|
    out = out && x.[0]=="r"
  end
  out
end

def contain_a(array)
  array.collect do |x|
    if x.include?("a")
      x
    end
  end
end

def first_wa(array)
  array.each do |x|
    if x.include?("wa")
      return x
    end
  end
end

def remove_non_strings(array)
  array.collect do |x|
   if foo.instance_of?(String)
     x
   end
 end
end
 