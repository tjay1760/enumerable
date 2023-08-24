module Myenumerable
    def all(&blk)
        each { |item| return false unless blk.call(item)}
        true
      end
      
    def any(&blk)
        each { |item| return true if blk.call(item) }
    false
    end
    def filter(&blk)
        result = []
    each { |item| result << item if blk.call(item) }
    result
    end
end