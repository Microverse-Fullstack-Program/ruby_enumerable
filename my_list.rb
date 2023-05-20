require_relative 'my_enumerable'

class MyList
  include MyEnumerable


  def initialize(*list)
    @list = list
  end

  def each(&block)
    @list.each(&block)
  end
end

# Create our list
list = MyList.new(1, 2, 3, 4)
print(list.list)
puts
# <MyList: @list=[1, 2, 3, 4]>

# Test #all?
puts(list.all? { |e| e < 5 })
# true

puts(list.all? { |e| e > 5 })
# false

# Test #any?
puts(list.any? { |e| e == 1 })
# true

puts(list.any? { |e| e == 5 })
# false

# Test #filter
filtered_array = list.filter { |e| e&.even? }
puts filtered_array.inspect
# [2, 4]
