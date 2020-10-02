# Merge Sort
  # Take in an array
    # If less than 2 sides
      # Return array
    # Else
      # Find middle of array
      # Set left side from start up to middle
      # Set right side from middle to end
      # Sort the left side with recursion
      # Sort the right side with recursion
      # Merge Sides with the sorted left and sorted ride sides

# Merge Sides
  # Take in the two sides
  # If left side is empty
    # Return right
  # If right side is empty
    # Return left
  # If left is less than right
    # Return left and add to a recursion of remaining left side and full right side
  # Else
    # Return right and add to a recursion of full left side and remaining right side

def merge_sort(ary)
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

def merge_sides(left, right)
  if left.empty?
    right
  elsif right.empty?
    left
  elsif left[0] < right[0] 
    [left[0]] + merge_sides(left[1..left.length], right)
  else
    [right[0]] + merge_sides(left, right[1..right.length])
  end
end

p merge_sort([2, 1, 5, 4, 3])
