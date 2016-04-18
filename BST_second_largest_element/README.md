# Problem

Write a method to find the 2nd largest element in a binary search tree.

Here is a sample binary tree node class:
```ruby
class Node

    attr_accessor :value
    attr_reader :left, :right

    def initialize(value)
        @value = value
        @left  = nil
        @right = nil
    end

    def insert_left(value)
        @left = Node.new(value)
        return @left
    end

    def insert_right(value)
        @right = Node.new(value)
        return @right
    end
end
```
