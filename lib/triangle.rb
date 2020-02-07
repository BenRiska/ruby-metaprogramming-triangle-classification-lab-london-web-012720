class Triangle
  # write code here

  attr_accessor :try_type

  
    def initialize(s1 = nil, s2 = nil, s3 = nil)
      if s1 <= 0 || s2 <= 0 || s3 <= 0
         raise TriangleError
      end
      if s1 == nil || s2 == nil || s3 == nil 
        raise TriangleError
      end
      s1_s2 = s1 + s2
      s3_s2 = s3 + s2
      s1_s3 = s1 + s3
      if s1_s2 <= s3 || s3_s2 <= s1 || s1_s3 <= s2
        raise TriangleError
      end
      if (s1 == s2 && s2 == s3 && s3 == s1)
      @try_type = :equilateral
      elsif (s1 == s2 || s2 == s3 || s3 == s1)
      @try_type = :isosceles
      else
      @try_type = :scalene
      end
    
  end
  
  def kind
    @try_type
  end

  class TriangleError < StandardError
    def message
      puts "Illegal move"
    end
  end

end

