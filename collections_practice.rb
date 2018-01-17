def begins_with_r(array)
  test = array.select {|x| x.start_with?("r")}
  test.count == array.count ? true : false
end

def contain_a(array)
  array.select {|x| x.include? "a"}
end

def first_wa(array)
  array.find {|x|
    x.class == String && x.start_with?('wa')
  }
end

def remove_non_strings(array)
  array.delete_if { |e| e.class !=  String}
end

def count_elements(array)
  unique = array.uniq
  unique.each_with_index {|x,i|
    unique[i][:count] = array.count(x)
  }
end

def merge_data(keys_a, data_a)
  keys_a.each_with_index{|key, i|
    data[i][key.keys[0]]=key.values[0]
  }
  data
end

  #
  #     it 'combines two nested data structures into one' do
  #       expect(merge_data(keys, data)).to eq(merged_data)
  #     endz

  def find_cool(array)
    output = []
    array.each{|h|
      h.each { |k,v|
        if v==cool
          output << h
        end
      }
    }
    output
  end


  def organize_schools(data)
    collect_locations = []
    data.values.each {|i|
      collect_locations << i[:location]
    }
    collect_locations.uniq!
    new_hash = {}
    collect_locations.each{|loc|
      array = []
      data.each {|k,v|
        if v[:location]== loc
          array << k
        end
      }
      new_hash[loc]=array
    }
    new_hash
  end
