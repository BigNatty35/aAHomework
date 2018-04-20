class Stack
  attr_accessor :stack

  def initialize
    @stack = []
  end

  def add(el)
    @stack << el
  end

  def remove
    @stack.pop
  end

  def show
    @stack
  end

end

class Queue

  def initialize
    @stack = []
  end

  def enqueue(el)
    @stack.unshift(el)
  end

  def dequeue
    @stack.pop
  end

  def show
    @stack
  end

end
