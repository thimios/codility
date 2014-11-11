def solution(a)
	left_sum = 0
	right_sum = a.reduce(:+)
	
	min_diff = 1 / 0.0
	(1...(a.count)).each do |p| 
		left_sum += a[p-1]
		right_sum -= a[p-1]

		diff = (left_sum - right_sum).abs
		min_diff = diff if diff < min_diff
	end

	min_diff		
end

require 'test/unit'

class TestSolution < Test::Unit::TestCase
    def test_solution
    	assert_equal 1, solution( [3, 1, 2, 4, 3] )	
    end

    def test_min_array
    	assert_equal 2, solution( [3, 1] )
    end


	def test_two_elements
    	assert_equal 0, solution([10, 10])
  	end

  	def test_all_negative
    	assert_equal 0, solution([-10, -10])
  	end

  	def test_one_negative
    	assert_equal 20, solution([-10, 10])
  	end
end