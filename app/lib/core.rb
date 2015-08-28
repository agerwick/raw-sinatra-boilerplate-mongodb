class Object
  def return_biggest (a)
    return self if self > a
    return a
  end

  def return_smallest (a)
    return self if self < a
    return a
  end
end

class Array
  def biggest
    self.reduce(:return_biggest)
  end
  def smallest
    self.reduce(:return_smallest)
  end
end

class String
  def for_css
    # replaces any number of sequential non-alphanumeric characters and spaces to exactly one dash and makes sure the start and end of the string is an alphanumeric character.
    # This is meant for converting human readable text to css id or class tags.
    self.downcase.gsub(/[\W_]+/,'-').chomp("-").reverse.chomp("-").reverse
  end
  def for_css!
    replace(for_css)
  end
end
# ok, fine, this may not be a brilliant example of business logic, as it's mostly about implementation, but there are limits to exactly how much "business logic" you can invent for a completely generic boilerplace...

class Object
  def to_boolean
    value = self
    value = value.downcase if value.respond_to? :downcase  # "True", "true", "TRUE" or "trUe" are all true
    value = 1 if (value.class.ancestors.include? Numeric) && value > 0  # all positive number -> true
    value = 1 if (value.class.ancestors.include?(Hash) || value.class.ancestors.include?(Array)) && not(value.empty?)  # any content in array or hash -> true
    [true, 'true', 'yes', '1', 1].include? value
  end
end

