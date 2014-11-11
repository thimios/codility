def solution(a)
    return -1 if a.count == 0
    return 0 if a.count == 1
    left_sum = 0
    right_sum = a.slice(1, (a.count - 1)).reduce(:+)
    
    a.each_with_index do |item, index|
        return index if left_sum == right_sum
        
        left_sum += item
        index == a.count-1 ? 0 : right_sum -= a[index + 1] 
    end
    return -1
end

require "test/unit"

class TestSolution < Test::Unit::TestCase
    def test_solution
        assert_equal( 0, solution([0]))
        assert_equal( -1, solution([]))
    end
end
 
