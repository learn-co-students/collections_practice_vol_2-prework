require "pp"

A = [
       {
         "blake" => {
            :awesomeness => 10,
                 :height => "74",
              :last_name => "johnson"
        },
        "ashley" => {
            :awesomeness => 9,
                 :height => 60,
              :last_name => "dubs"
        }
    }
]

B = [{
        :first_name => "blake"
    },
       {
        :first_name => "ashley"
    }]

def merge_data(data1, data2)

  data1.each_with_index do |entry, index|
    new_entry = data2.first[entry[:first_name]].merge(entry)
    pp new_entry
  end

end

# class ::Hash
#     def deep_merge(second)
#         merger = proc { |key, v1, v2|
#           Hash === v1 && Hash === v2 ? v1.merge(v2, &merger) :
#             Array === v1 && Array === v2 ? v1 | v2 :
#               [:undefined, nil, :nil].include?(v2) ? v1 : v2 }
#
#         self.merge(second.to_h, &merger)
#     end
#end




def merge_data2(data1, data2)

  new_hash = {}

  #This is to deal with a mix of arrays and hashes
  compare = proc { |key, v1, v2|
      if v1.class == Hash && v2.class == Hash
        v1.merge(v2, &compare)
      elsif v1.class == Array && v2.class == Array
        v1 | v2
      elsif [:undefined, nil, :nil].include?(v2)
        v1
      else #mixed types and valid value prioritizes v2 over v1
        v2
      end }

      data1.each do |k1, v1|
        data2.each do |k2, v2|
          if k1 == k2 #key conflict, solve using rules in &compare
            new_hash.merge!(v1.merge(v2, &compare), &compare)
          elsif k1 == v2
            new_hash.merge!(v1.merge({k2 => v2}, &compare), &compare)
          elsif k2 == v1
            new_hash.merge!(v2.merge({k1 => v1}, &compare), &compare)
          else # nothing matches, merge anything valid to new_hash
            if [:undefined, nil, :nil].include?(v1) && [:undefined, nil, :nil].include?(v2)#both invalid
              #Do nothing --> nothing to merge
            elsif [:undefined, nil, :nil].include?(v1) && ![:undefined, nil, :nil].include?(v2)#v1 invalid, v2 valid
              new_hash.merge!(v2, &compare)
            elsif [:undefined, nil, :nil].include?(v2) && ![:undefined, nil, :nil].include?(v1)#v2 invalid, v1 valid
              new_hash.merge!(v1, &compare)
            else # nothing matches and both valid
              new_hash.merge!(v1.merge(v2, &compare), &compare)
            end
          end
        end
      end

  new_hash
end
# def merge_data(data1, data2)
#
#   def merge(data1, data2, new_hash)
#     data1.each do |k1, v1|
#       data2.each do |k2, v2|
#         if k1 == k2 #h1k == h2k = conflict and one must be chosen
#           if v1.class == Hash
#             new_hash[k1] = merge(v1, data2, new_hash)
#           end
#         elsif k1 == v2 #h1k == h2v = h2(k,v) merge with h1v
#           new_hash[k2] = v2
#           if v1.class == Hash
#             merge(v1, data2, new_hash)
#           else
#             new_hash[k1] = v1
#           end
#         else # Nothing matches, add both and iterate through nested hashes
#           if v1.class == Hash
#             new_hash[k1] = merge(v1, data2, new_hash)
#           else
#             new_hash[k1] = v1
#           end
#           if v2.class == Hash
#             new_hash[k2] = merge(data1, v2, new_hash)
#           else
#             new_hash[k2] = v2
#           end
#         end
#       end
#     end
#     new_hash
#   end
#
#   merge(data1, data2, {})
# end
#
# def merge(data1, data2, new_hash)
#   data1.each do |k1, v1|
#     data2.each do |k2, v2|
#       if k1 == k2 #h1k == h2k = conflict and one must be chosen
#         if v1.class == Hash
#           new_hash[k1] = merge(v1, data2, new_hash)
#         end
#       elsif k1 == v2 #h1k == h2v = h2(k,v) merge with h1v
#         new_hash[k2] = v2
#         if v1.class == Hash
#           merge(v1, data2, new_hash)
#         else
#           new_hash[k1] = v1
#         end
#       else # Nothing matches, add both and iterate through nested hashes
#         if v1.class == Hash
#           new_hash[k1] = merge(v1, data2, new_hash)
#         else
#           new_hash[k1] = v1
#         end
#         if v2.class == Hash
#           new_hash[k2] = merge(data1, v2, new_hash)
#         else
#           new_hash[k2] = v2
#         end
#       end
#     end
#   end
#   new_hash
# end
#if no matches, h1(k,v) added to h3 (new merged hash)

#result
#{
#  :first_name => "blake",
#  :awesomeness => 10,
#  :height => "74",
#  :last_name => "johnson"
#}

#possible algorithm


#take first item in first hash and keep digging until item is a key (not nested hash)
#walk through second hash item by item (recursively) and see if you find a match of either key or value
# <do something with match> (figure out later)
#   h1k matches h2k (duplicates - one will have to overwrite the other)
#   h1k matches h2v ** what should happen here?
#   no need to check h1 values against anything
#
# take second item in first hash
# walk through second hash item by item (recursively) and see if you find a match of either key or value
# <do something with match> (figure out later)
