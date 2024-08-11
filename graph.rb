
require_relative "queue"


class Vertex
  attr_accessor :value, :adjascent_neighbor
  def initialize(value)
    @value = value
    @adjascent_neighbor = []
  end

  def add_directional_neighbor(vertex)
    @adjascent_neighbor << vertex
  end

  def add_undirectional_neighbor(vertex)
    
    return if @adjascent_neighbor.include?(vertex)
    @adjascent_neighbor << vertex
    vertex.add_undirectional_neighbor(self)
  end

  def dfs_traverse(vertex, visited = {})
    #Mark vertex as visited by adding it to the hash
    visited[vertex.value] = true

    #print the vertex value, just to check if our traversal works
    puts vertex.value

    #Iterate through the current vertex's adjascent vertices
    vertex.adjascent_neighbor.each do |neighbor|
      # ignore neighbor if we already visited it.
      next if visited[neighbor.value]

      dfs_traverse(neighbor, visited)
    end
  end

  # TO Search for a particular vertex in the tree
  
  def dfs_search_particular(vertex, search_value, visited ={})
      return vertex if vertex.value == search_value

      # add the vertext to visited hash
      
      visited[vertex.value] = true

      # Visit all the neighbors to see if particular vertex is in the graph
      
      vertex.adjascent_neighbor.each do |neighbor|
        next if visited[neighbor.value]

        return neighbor if neighbor.value == search_value

        vertex_were_searching_for = search_particular(neighbor,search_value,visited)

        return vertex_were_searching_for if vertex_were_searching_for
      end
      return nil
      end


    def bfs_traverse(vertex)
      queue = Queue.new

      visited = {}
      queue.enqueue(vertex)
      visited[vertex.value] = true
      until queue.array.empty?
        current_vertex = queue.dequeue
        puts current_vertex.value  
        current_vertex.adjascent_neighbor.each do |neighbor|
          if !visited[neighbor.value]
            visited[neighbor.value] = true
            queue.enqueue(neighbor)
          end
        end
      end
    end
  
  
  end




alice = Vertex.new("Alice")
bob = Vertex.new("Bob")
candy = Vertex.new("Candy")
derek = Vertex.new("Derek")
elaine = Vertex.new("Elaine")
fred = Vertex.new("Fred")
gina = Vertex.new("Gina")
helen = Vertex.new("Helen")
irena = Vertex.new('Irena')
alice.add_undirectional_neighbor(bob)
alice.add_undirectional_neighbor(candy)
alice.add_undirectional_neighbor(derek)
alice.add_undirectional_neighbor(elaine)
bob.add_undirectional_neighbor(fred)
fred.add_undirectional_neighbor(helen)
helen.add_undirectional_neighbor(candy)
derek.add_undirectional_neighbor(elaine)
derek.add_undirectional_neighbor(gina)
gina.add_undirectional_neighbor(irena)

