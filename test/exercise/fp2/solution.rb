module Exercise
  module Fp2
    class MyArray < Array
      # Использовать стандартные функции массива для решения задач нельзя.
      # Использовать свои написанные функции для реализации следующих - можно.

      # Написать свою функцию my_each
      def my_each
        tail = self
        begin
          head, *tail = tail
          yield head
        end until tail.empty?
        self
      end

      # Написать свою функцию my_map
      def my_map
        my_reduce(MyArray.new) do |acc, el|
          acc << yield(el)
        end
      end

      # Написать свою функцию my_compact
      def my_compact
        my_reduce(MyArray.new) do |acc, el|
          if el.nil?
            acc
          else
            acc << el
          end
        end
      end

      # Написать свою функцию my_reduce
      def my_reduce(acc = nil)
        tail = self
        acc, *tail = tail if acc.nil?
        begin
          head, *tail = tail
          acc = yield acc, head
        end until tail.empty?
        acc
      end
    end
  end
end
