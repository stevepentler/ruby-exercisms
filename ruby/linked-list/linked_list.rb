require 'pry'

class Deque
  attr_accessor :head,
                :list

  def initialize
    @head = nil
    @tail = nil
  end

  def push(data)
    if @head.nil?
      node = Node.new(data)
      @head = node
      @tail = node
    else
      node = Node.new(data)
      @tail.next_node = node
      @tail = node
    end
  end

  def pop
    if @head == @tail
      return_value = @head.data
      @head = nil
      @tail = nil
    else
      current_node = @head
      current_node = next_node until current_node.next_node == @tail
      return_value = current_node.next_node.data
      @tail = current_node
    end
    return_value
  end
end


class Node
  attr_accessor :data,
                :next_node
  def initialize(data = nil)
    @data = data
    @next_node = nil
  end
end