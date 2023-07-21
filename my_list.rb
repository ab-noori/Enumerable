require_relative 'my_enumerable'

class MyList
  include MyEnumerable

  attr_reader :list

  def initialize(*items)
    @list = items
  end

  def each(&block)
    @list.each(&block)
  end
end

list = MyList.new(1, 2, 3, 4, 5)

puts(list.all? { |x| x < 6 })
# true
puts(list.all? { |e| e > 5 })
# false
puts(list.any? { |e| e == 2 })
# true
puts(list.any? { |e| e == 6 })
# false
print(list.filter(&:even?))
# [2, 4]
