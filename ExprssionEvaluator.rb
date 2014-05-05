class PlusOperator 
    def operate( left,right) 
        return left.evaluate() + right.evaluate()
    end
end

class MinusOperator 
    def operate(left , right) 
        return left.evaluate() - right.evaluate()
    end
end


class Exprssion
    def initialize(*args)
        if args.length == 1
            @value = args[0]
        else
            @left = args[0];
            @right = args[1];
            @operator = args[2];
        end
        
    end

    def evaluate
        (@value!=nil)? @value: @operator.operate(@left,@right)
    end

end


five = Exprssion.new(5)
plus = PlusOperator.new
minus = MinusOperator.new
exp = Exprssion.new(Exprssion.new(five,five,plus),five,minus)
puts exp.evaluate


