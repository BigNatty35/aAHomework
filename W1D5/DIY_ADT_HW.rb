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


class Map
  def initialize
    @map = []
  end

  def assign(key, value)
    @map << [key, value]
  end

  def lookup(key)
    @map.each do |pair|
      if pair.include?(key)
        return pair[1]
      end
    end
  end

  def remove(key)
    @map.each do |pair|
     @map.delete(pair) if pair.include?(key)
    end
    @map
  end

  def show
    @map
  end

end
