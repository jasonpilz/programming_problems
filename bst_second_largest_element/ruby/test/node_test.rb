require_relative '../lib/node.rb'
require 'minitest/autorun'

class NodeTest < Minitest::Test
  def test_it_initializes_with_correct_values
    node = Node.new(4)

    assert_equal 4, node.value
    assert_nil node.right
    assert_nil node.left
  end
end


