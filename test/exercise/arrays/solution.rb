module Exercise
  module Arrays
    class << self
      def replace(array)
        array
        for i in 0..array.size - 1
          if array[i] > 0
            array[i] = array.max
          end
        end
        array
      end

      def search(_array, _query)
        low = 0
        high = _array.size - 1
        if low > high 
          -1
        else
          while low <=  high do
            mid = (low + high) / 2
            quess = _array[mid]
            if quess < _query
              low = mid + 1
            elsif quess > _query
              high = mid - 1
            else
              break mid
            end
            if low > high
              break -1
            end
          end
        end  
      end
    end
  end
end
