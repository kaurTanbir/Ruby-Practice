require_relative "ExprssionEvaluator"
require "test/unit"

class TestEvaluator < Test::Unit::TestCase

	def test_addition
		@five =Expression.new(5)

		exp = Expression.new(@five,@five,PlusOperator.new)
		assert_equal(10, exp.evaluate)
	end

	def test_addition_of_complex_expression
		@five =Expression.new(5)
		@two = Expression.new(2)
		@plus = PlusOperator.new

		exp = Expression.new(Expression.new(@five,@two,@plus),@five,@plus)
		assert_equal(12, exp.evaluate)
	end

	def test_subtraction
		@five =Expression.new(5)

		exp = Expression.new(@five,@five,MinusOperator.new)
		assert_equal(0, exp.evaluate)
	end

	def test_subtraction_of_complex_expression
		@fifteen =Expression.new(15)
		@two = Expression.new(2)
		@minus = MinusOperator.new

		exp = Expression.new(Expression.new(@fifteen,@two,@minus),@two,@minus)
		assert_equal(11, exp.evaluate)
	end

	def test_expression_with_both_addition_and_subtraction
		@five = Expression.new(5)
		@plus = PlusOperator.new
		@minus = MinusOperator.new

		exp = Expression.new(Expression.new(@five,@five,@plus),@five,@minus)
		assert_equal(5, exp.evaluate)
	end

end
