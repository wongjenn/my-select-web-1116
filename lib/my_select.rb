def my_select(collection)
  new_array = []
  i = 0

  if collection.empty?
    return []
  else
    while i < collection.length

      if yield(collection[i]) == true
        new_array.push(collection[i])
      end

      i += 1
    end
  end

  new_array
end
