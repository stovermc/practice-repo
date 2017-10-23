# method for calculating sum of integers in an array

def sum(array)
  array.reduce(:+)
end

array = [2,5,8,1,3]
p sum(array)
