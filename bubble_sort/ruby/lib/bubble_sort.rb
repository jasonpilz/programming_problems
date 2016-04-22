class BubbleSort
  def sort(array)
    array.count.times do
      array.count.pred.times do |x|
        if array[x + 1]  < array[x]
          array[x], array[x + 1] = array[x + 1], array[x]
        end
      end
    end
    array
  end
end
