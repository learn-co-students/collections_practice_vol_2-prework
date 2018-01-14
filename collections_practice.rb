def begins_with_r(array)
  test = array.select {|x| x.start_with?("r")}
  test.count == array.count ? true : false
end

def contain_a(array)
  array.select {|x| x.include? "a"}
end

def first_wa(array)
  array.find {|x| x.start_with?("wa")}
end

def remove_non_strings(array)
  array.delete_if { |e| e.class !=  String}
end

def count_elements(array)
  array.uniq.map {|x| array.count(x)}
end

def merge_data()
end

  #
  #     it 'combines two nested data structures into one' do
  #       expect(merge_data(keys, data)).to eq(merged_data)
  #     end
  def find_cool
  end

  #
  #     it 'find all cool hashes' do
  #       expect(find_cool(cool)).to eq([{:name => "blake",:temperature => "cool"}])
  #     end
  #
  #   end
  #
  def organize_schools
  end
  #
  #     # Question 8
  #
  #     it 'organizes the schools by location' do
  #       expect(organize_schools(schools)).to eq(organized_schools)
  #     end
  #
  #   end
  #
  # end


#   describe '#begins_with_r' do

#     it 'Return true if every element of the tools array starts with an "r" and false otherwise.' do
#       expect(begins_with_r(["ruby", "rspec", "rails"])).to eq(true)
#     end
#
#     it "should return false if there's an element that does not begin with r" do
#       expect(begins_with_r(["ruby", "rspec", "sails"])).to eq(false)
#     end

#
#   describe '#first_wa' do
#
#     # Question 3
#
#     it "Return the first element that begins with the letters 'wa'" do
#       expect(first_wa(["candy", :pepper, "wall", :ball, "wacky"])).to eq("wall")
#     end
#
#   end
#
#   describe '#remove_non_strings' do
#
#     # Hint: Use the method "class"  "blake".class
#
#     # Question 4
#
#     it "remove anything that's not a string from an array" do
#       expect(remove_non_strings(["blake", 1, :hello])).to eq(["blake"])
#     end
#
#   end
#
#   describe '#count_elements' do
#
#     # Question 5
#
#     it 'count how many times something appears in an array' do
#       expect(count_elements([{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}])).to eq([{:name => "blake", :count => 2}, {:name => "ashley", :count => 1}])
#     end
#
#   end
#
#   describe '#merge_data' do
#
#     # Question 6
#
#     it 'combines two nested data structures into one' do
#       expect(merge_data(keys, data)).to eq(merged_data)
#     end
#
#   end
#
#   describe '#find_cool' do
#
#     # Question 7
#
#     it 'find all cool hashes' do
#       expect(find_cool(cool)).to eq([{:name => "blake",:temperature => "cool"}])
#     end
#
#   end
#
#   describe '#organize_schools' do
#
#     # Question 8
#
#     it 'organizes the schools by location' do
#       expect(organize_schools(schools)).to eq(organized_schools)
#     end
#
#   end
#
# end
