class Queue
  
  attr_accessor :array

  def initialize
    @array = []
  end

  def enqueue(value)
    @array.push(value)
  end
  def dequeue
    @array.shift
  end
  def read
    p @array
  end
end