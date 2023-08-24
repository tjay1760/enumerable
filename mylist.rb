require_relative 'myenumerable'

class Mylist
    include Myenumerable
    def initialize(*list)
        @list = list
    end
    def each(&blk)
        @list.each do |item|
          blk.call(item)
        end
      end
      
end
list = Mylist.new(3,4,5,6,2,5,6)
puts(list.all{|item| item>4})
puts(list.any{|item| item>4})
print(list.filter{|item| item>4})
