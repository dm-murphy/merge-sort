# Merge Sort
  # Take in an array
    # If less than 2 sides, return array
    # Else break up array into 2 sides
      # Find middle of array
      # Set left side from start up to middle
      # Set right side from middle to end
      # Sort the left side
      # Sort the right side

# Merge Sides
  # Take in the two sides
  # Compare left to right
    # If left is empty
      # Return right
    # If right is empty
      # Return left
    # If left is less than right
      # Return left
    # Else
      # Return right

def merge_sides(left, right)
  if left.empty?
    right
  elsif right.empty?
    left
  elsif left[0] < right[0]
    # Confused here with how this part works
    [left[0]] + merge_sides(left[1..left.length], right)
  else
    # Confused here with how this part works
    [right[0]] + merge_sides(left, right[1..right.length])
  end
end

def merge_sort(ary)
  #puts ary.to_s # For debugging
  if ary.length < 2
    ary
  else
    middle = ary.length / 2
    left_side = ary[0...middle]
    right_side = ary[middle..ary.length]
    sorted_left = merge_sort(left_side)
    sorted_right = merge_sort(right_side)
    merge_sides(sorted_left, sorted_right)
  end
end

print merge_sort([2, 1, 5, 4, 3])
puts
print merge_sort([7,9,1,2])
puts
