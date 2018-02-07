

# 1. Determine if any given square with (x,y) coordinates is currently occupied
def is_occupied?(x,y)
  pieces.each do |piece|
    if piece.x == x && piece.y == y
      return true
    else
      return false
    end
  end
end

# 2. Method to determine if a pathway is obstructed between current location (x1,y1) and destination location (x2,y2) represented as an array
def is_obstructed?(piece_location, piece_destination)
  # 2a. location array [x, y] separated into individual variables
  x_current = piece_location[0]
  y_current = piece_location[1]
  x_destination = piece_destination[0]
  y_destination = piece_destination[1]

  # 2b. Determine if it is horizontal, vertical, or diagonal
  path = ''

  if x_current == x_destination
    path = 'vertical'
  elsif y_current == y_destination
    path = 'horizontal'
  elsif
    # return diagonal ??
  end


  #2c1. See if there is a vertical obstruction going up
  if path == 'vertical' && y_current < y_destination
    (y_current+1).upto(y_destination-1) do |y|
      return true if is_occupied?(x_current, y) == true
    end
  end

  #2c2. See if there is a vertical obstruction going down
  if path == 'vertical' && y_current > y_destination
    (y_current-1).downto(y_destination+1) do |y|
      return true if is_occupied?(x_current, y) == true
    end
  end

  #2d1. See if there is a horizontal obstruction going right
  if path == 'horizontal' && x_current < x_destination
    (x_current+1).upto(x_destination-1) do |x|
      return true if is_occupied?(x, y_current) == true
    end 
  end 


  # 3. See if there is a horizontal obstruction going left
  if path == 'horizontal' && x_current > x_destination
    (x_current-1).downto(x_destination+1) do |x|
      return true if is_occupied?(x, y_current) == true
    end 
  end


end 
