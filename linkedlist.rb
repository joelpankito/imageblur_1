class Node 
	attr_accessor :value, :next_node

	def initialize(value)
		@value = value
	end


end


first_node = Node.new(1)
second_node = Node.new(2)
third_node = Node.new(3)
forth_node = Node.new(4)
first_node.next_node = second_node
second_node.next_node = third_node
third_node.next_node = forth_node



def output(node)
	while node != nil 
		puts(node.value)
		node = node.next_node
	end
end

output(first_node)

#puts(first_node.next_node.next_node.value)