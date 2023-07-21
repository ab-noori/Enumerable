module MyEnumerable
  def all?
    each { |item| return false unless yield(item) }
    true
  end

  def any?
    each { |item| return true if yield(item) }
    false
  end

  def filter
    result = []
    each { |item| result.push(item) if yield(item) }
    result
  end
end
