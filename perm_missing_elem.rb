def solution(a)
    counters = Array.new((a.count+1), 0)
    
    a.each do |found_element|
        counters[found_element-1] = 1    
    end
    
    return counters.index( 0 ) + 1   
end


require 'test/unit'

class TestSolution < Test::Unit::TestCase
    def test_solution
        assert_equal( 2, solution([1,3]))
        assert_equal( 3, solution([1,2]))
    end

    def test_empty_array
    	assert_equal 1, solution([])
  	end

  	def test_one_element
    	assert_equal 1, solution([2])
  	end
end
