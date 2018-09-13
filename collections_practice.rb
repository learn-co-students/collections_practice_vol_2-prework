def begins_with_r(array)
  array.all?{|el| el[0]=="r"}
end

def contain_a(array)
  array.select{|el| el.include?("a")}
end

def first_wa(array)
  array.find{|el| el[0..1]=="wa"}
end

def remove_non_strings(array)
  array.select{|el| el.class==String}
end

def count_elements(array)
  r1={}
  array.each do |el|
    if r1.keys.include?(el)
      r1[el]+=1
    else
      r1[el]=1
    end
  end
  r=[]
  r1.each do |k,v|
    r2={}
    r2[:name]=k[:name]
    r2[:count]=v
    r+=[r2]
  end
  r
end

def merge_data(keys,array)
  array=array[0]
  r=[]
  i=0
  array.each do |el, el2|
    puts el
    r1={}
    k1=el
    v1=array[el]
    v1.each {|k2,v2| r1[k2]=v2}
    r1[keys[i].keys[0]]=k1
    i+=1
    r+=[r1]
    puts r1
  end
  r
end

def find_cool(array)
  array.select {|el| el[:temperature]=="cool"}
end

def organize_schools(hash)
  r={}
  hash.each do |k,v|
    r[v[:location]]=[] unless r.keys.include?(v[:location])
    r[v[:location]]+=[k]
  end
  r
end
  
  