module Exercise
  module Arrays
    class << self
      def replace(array)
        max = array.first
        for i in 1..array.size - 1
          max = array[i] if array[i] > max
        end
        for i in 0..array.size - 1
          array[i] = max if array[i] > 0
        end
        array
      end

      def search(array, query)
        low = 0
        high = array.size - 1
        return -1 if low > high
        while low <= high
          mid = (low + high) / 2
          quess = array[mid]
          if quess < query
            low = mid + 1
          elsif quess > query
           high = mid - 1
          else
          break mid
          end
          break -1 if low > high
        end
      end
    end
  end
end