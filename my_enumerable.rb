module MyEnumerable
  def all?
    return 'No block' unless block_given?

    each { |element| return true if yield(element) }
    false
  end
  def any?
    return 'No block' unless block_given?

    each { |element| return true if yield(element) }
    false
  end
end
