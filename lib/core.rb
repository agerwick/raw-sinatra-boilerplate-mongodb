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


#2.0.0p353 :056 > class Class # or FixNum, or ideally all numbers and strings
#2.0.0p353 :057?>   def bigger (a)
#2.0.0p353 :058?>     return self if self > a
#2.0.0p353 :059?>     return a
#2.0.0p353 :060?>     end
#2.0.0p353 :061?>   end

#2.0.0p353 :056 > class Class
#2.0.0p353 :057?>   def bigger (a)
#2.0.0p353 :058?>     return self if self > a
#2.0.0p353 :059?>     return a
#2.0.0p353 :060?>     end
#2.0.0p353 :061?>   end
# => nil
#2.0.0p353 :062 > ["a", "1", "S", "x"].reduce(:bigger)
# => "x"

