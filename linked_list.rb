class Node
  attr_accessor :data, :next_node

  def initialize(data)
    @data = data
  end

end

node_1 = Node.new("once")
node_2 = Node.new("upon")
node_3 = Node.new("a")
node_4 = Node.new("time")

node_1.next_node = node_2
node_2.next_node = node_3
node_3.next_node = node_4

class LinkedList
  attr_accessor :first_node

  def initialize(first_node)
    @first_node = first_node
  end

  def read(index)
    current_node = first_node
    current_index = 0
    while current_index<index
      current_node = current_node.next_node
      current_index += 1

      return nil unless current_node
    end
    return current_node.data
  end

  def index_of(value)
    # we begin at the first node of the list
    current_node = first_node
    current_index = 0

    begin
      #if we find the data we are looking for, we return it:
      if current_node.data == value
        return current_index
      end

      current_node = current_node.next_node
      current_index += 1
    end while current_node

    return nil
  end

  def insert_at_index(index, value)
    # First we create new node with provided value
    new_node = Node.new(value)
    # if we are inserting at the start of the list
    if index == 0
      # Have our new node link to what was the first nde:
      new_node.next_node = first_node
      # Now we establish that our new node is first node of the list
      self.first_node = new_node
      return
    end

    # If we are inserting anywhere other than the beginning
    current_node = first_node
    current_index = 0
    # First we access the node immediately before we
    # insert new node
    while current_index < (index-1)
      current_node = current_node.next_node
      current_index += 1
    end
    # Have the new node link to the next node
    new_node.next_node = current_node.next_node

    # Modify the link of the previous node to point to
    # our new node
    current_node.next_node = new_node
  end


  def delete_at_index(index)
    # if we are deleting the first node
    if index == 0
      # Simply set the first node the what is current the second node
      self.first_node = first.node.next_node
      return
    end
    current_node = first_node
    current_index = 0

    #first, we find the node immediately before the one we
    #want to delete
    while current_index < (index - 1) do
      current_node = current_node.next_node
      current_index += 1
    end
    node_after_deleted_node = current_node.next_node.next_node

    current_node.next_node = node_after_deleted_node
  end
end


list = LinkedList.new(node_1)

list.insert_at_index(3,'purple')
puts list.read(3)
list.delete_at_index(3)
puts list.index_of("time")
