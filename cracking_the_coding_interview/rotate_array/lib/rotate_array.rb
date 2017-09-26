# Given an image represented by an NxN matrix, where each pixel in the image is
# 4 bytes, write a method to rotate the image by 90 degrees. Can you do this in
# place?
# [[1, 2, 3],
#  [4, 5, 6],
#  [7, 8, 9]]

# [[7, 4, 1],
#  [8, 5, 2],
#  [9, 6, 3]]

# [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
# [[7, 4, 1], [8, 5, 2], [9, 6, 3]]

# 2, 4, 6
# 0,0 --> 0,2
# 0,1 --> 1,2
# 0,2 --> 2,2

# 1,0 --> 0,1
# 1,1 --> 1,1
# 1,2 --> 2,1

# 2,0 --> 0,0
# 2,1 --> 1,0
# 2,2 --> 2,0

### Solution Steph and I came up with

def rotate(matrix)
  # 4 groups of two
  a = 0
  b = 2
  c = 2
  2.times do |num|
      matrix[num][c], matrix[c][b], matrix[b][a], matrix[a][num] = matrix[a][num], matrix[num][c], matrix[c][b], matrix[b][a]
      b -=1
  end
  p matrix
end

###Solution using ruby methods

def rotate(matrix)
  p matrix.reverse.transpose
end


rotate([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
