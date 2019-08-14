# Your Code Here
def map ( array )
  i = 0  
  newArray = []
  while i < array.length do
    newArray.push(yield(array[i]))
    i += 1 
  end
  return newArray
end

<<<<<<< HEAD
def reduce(sources, total = nil)
  i = 0 
  while i < sources.length do 
    if total.nil?
      total = yield(0, sources[i])
    else 
      if yield(total, sources[i]) == false
        return false 
      elsif sources[i] == true
        total = true 
      else 
        total = yield(total, sources[i])
      end   
    end 
=======

def reduce(sources, starting_point = nil,)
  i = 0 
  total = nil 
  while i < sources.length do 
    total = yield(starting_point, sources[i])
>>>>>>> a71ab182584c32debba1113a4f712116ede4cf79
    i += 1 
  end
  return total 
end