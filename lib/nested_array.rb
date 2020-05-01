# Examples inspired by U. S. National Organic Standards

ORGANIC_PRODUCE = [
  "Strawberries",   #0 
  "Potatoes",       #1 
  "Grapes",         #2 
  "Avocadoes",      #3
  "Asparagus"       #4
]

CONVENTIONAL_PRODUCE = [
  "Grapefruit",     #0 
  "Pineapple",      #1 
  "Oranges",        #2 
  "Watermelon",     #3
  "Eggplant"        #4
]

def assembled_matrix

  assembled = [CONVENTIONAL_PRODUCE, ORGANIC_PRODUCE]

end

def sorted_matrix
  # Using Array literal syntax only, build another nested array that 
  # uses the arrays of conventional and organic produce as before.
  # However, this time, sort each internal array alphabetically by the first character
  conv_sorted = CONVENTIONAL_PRODUCE.sort 
  org_sorted = ORGANIC_PRODUCE.sort 

  sorted = [conv_sorted, org_sorted]  
  
end

def matrix_lookup(matrix, row, column)

  matrix[row][column]
end

def matrix_update(matrix, row, column, new_value)
  # Given any matrix (array of arrays), a row index and a column index, 
  # Update the matrix location at that row and column to have the value of new_value
  # Return the updated matrix
    matrix.each.each {|n| puts n } #test
  matrix[row][column] = new_value
   
    
  matrix 
end


#not used
def bubble_sort(arr)

  return arr if arr.length <= 1 
  temp = ""      
  n = 0 
  swapped = true 
  
  debug = 0;
  
  while (swapped) do
    swapped = false 
    while (n < (arr.length)) do
      if arr[n] > arr[n + 1]
        temp = arr[n]
        arr[n] = arr[n + 1]
        arr[n+1] = temp 
        swapped = true
      end
    end
    debug += 1 
    puts debug 
  end
  arr 
end