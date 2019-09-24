# Ruby Basics Part 3

class BookInStock
    attr_accessor :isbn, :price
    def initialize(isbn, price)
        if(isbn=="" || price<=0)
            raise ArgumentError.new('error') 
        end
        @isbn = isbn;
        @price = price;
    end
    
end