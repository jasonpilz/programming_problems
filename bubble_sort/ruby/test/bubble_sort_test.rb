require_relative '../lib/bubble_sort.rb'
require 'minitest/autorun'

class BubbleSortTest < Minitest::Test
  def test_it_can_sort_empty_collection
    bubble_sort = BubbleSort.new

    sorted = bubble_sort.sort([])

    assert_equal [], sorted
  end

  def test_it_can_sort_already_sorted_collection
    bubble_sort = BubbleSort.new

    sorted = bubble_sort.sort([1, 2])

    assert_equal [1, 2], sorted
  end

  def test_it_can_sort_3_element_collection
    bubble_sort = BubbleSort.new

    sorted = bubble_sort.sort([2, 1, 3])

    assert_equal [1, 2, 3], sorted
  end

  def test_it_can_sort_7_element_collection
    bubble_sort = BubbleSort.new

    sorted = bubble_sort.sort([4, 3, 2, 1, 5, 7, 6])

    assert_equal [1, 2, 3, 4, 5, 6, 7], sorted
  end
end
