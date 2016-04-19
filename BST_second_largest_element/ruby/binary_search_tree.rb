require_relative './node.rb'

class BinarySearchTree
  attr_reader :head

  def initialize()
    @head = nil
  end

  def insert(val)
    @head = insert_node(@head, val)
  end

  def find_largest(node)
    current = node
    while current
      return current.value if !current.right
      current = current.right
    end
  end

  def find_second_largest(root_node)
    if !root_node.left && !root_node.right
      raise Exception, 'Tree must have at least 2 nodes'
    end

    current = root_node

    while current
      # case: current is largest and has a left subtree
      # 2nd largest is the largest in that subtree
      if current.left && !current.right
        return find_largest(current.left)
      end

      # case: current is parent of largest, and largest has no children,
      # so current is second largest
      if current.right && \
          !current.right.right && \
          !current.right.left
        return current.value
      end

      current = current.right
    end
  end

  private
    def insert_node(node, val)
      return Node.new(val) unless node
      if val < node.value
        node.left = insert_node(node.left, val)
      else
        node.right = insert_node(node.right, val)
      end
      return node
    end
end
