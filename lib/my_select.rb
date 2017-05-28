def my_select(collection)
  if collection.length == 0
    puts "There's nothing to select!"
  else
    i = 0
    array = []
    while i < collection.length
      if yield(collection[i])
        array << collection[i]
      end
      i += 1
    end
    array
  end
end
