# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  all_positive = a > 0 && b > 0 && c > 0
  if !all_positive
    raise TriangleError, "Triangle sides must non-zero postive numbers"
  end

  # Sum of any two sides must be greater than the third sides.
  valid_sides = a + b > c && a + c > b && b + c > a
  if !valid_sides
    raise TriangleError, "Triangle sides must be valid"
  end

  if a == b && b == c
    :equilateral
  elsif a == b || b == c || a == c
    :isosceles
  else
    :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
