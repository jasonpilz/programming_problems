require_relative '../lib/binary_search_tree.rb'
require 'minitest/autorun'

class BinarySearchTreeTest < Minitest::Test

  def setup
    @bst = BinarySearchTree.new()
    @bst.insert(5)
    @bst.insert(3)
    @bst.insert(8)
    @bst.insert(1)
    @bst.insert(4)
    @bst.insert(7)
    @bst.insert(12)
    @bst.insert(10)
    @bst.insert(9)
    @bst.insert(11)
  end

  def test_it_can_find_largest_value
    largest = @bst.find_largest

    assert_equal 12, largest
  end

  def test_it_can_find_second_largest_value
    second_largest = @bst.find_second_largest

    assert_equal 11, second_largest
  end
end
