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
  def filter
    return 'No block' unless block_given?

    filtered_list = []
    each { |item| filtered_list << item if yield(item) }
    filtered_list
end
end
