class BoundingArea
  attr_reader :rectangles
  def initialize(rectangles)
    @rectangles = rectangles
  end

  def contains_point?(x, y)
    rectangles.each do |rect|
      return true if rect.contains_point?(x, y)
    end
    false
  end
end
