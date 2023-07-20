require_relative 'my_enumerable'

class MyList
  include MyEnumerable

  def initialize(items)
    @items = items
  end

  def each
    # Implementation of each method
  end
end
