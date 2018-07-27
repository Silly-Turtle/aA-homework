class Queue
  def initialize
    @line = []
  end

  def enqueue(el)
    line.push(el)
    el
  end

  def dequeue
    line.shift
  end

  def peek
    line.first
  end

  attr_reader :line
end 
