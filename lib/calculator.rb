class Calculator
    def add (x,y)
        x + y
    end
    def pretty_add (x,y)
        "The sum of #{x} and #{y} is #{self.add(x,y)}"
    end
    def array_add(array)
        array.inject(0){|sum,x| sum + x}
    end
    def puts_add (x,y)
        puts self.add(x,y)
        return self.add(x,y)
    end
end 