require 'set'

class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
	@value = value
	@next_node = next_node
  end
end

  def print_values(list_node)
	if list_node
	    print "#{list_node.value} --> "
	    print_values(list_node.next_node)
	else
	    print "nil\n"
	    return
	end
  end

  def reverse_list(list)
    result = nil
    while list != nil
        node = LinkedListNode.new(list.value)
        node.next_node = result
        result = node
        list = list.next_node
    end
    return result
end

def inf_check(check)
    set = Set[check]
    while check != nil

        if set.include?(check.next_node)
            return true
        else
            set.add(check.next_node)
        end
        check = check.next_node
    end
    return false
end

def infinite_loop?(list)
  tortoise = list.next_node
  hare = list.next_node

  until hare.nil?
    hare = hare.next_node
    return false if hare.nil?

    hare = hare.next_node
    tortoise = tortoise.next_node
    return true if hare == tortoise
  end

  return false
end


node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)
node4 = LinkedListNode.new(670, node3)
node5 = LinkedListNode.new(11, node4)

print_values(node3)


puts "-------"
revlist = reverse_list(node3)
print_values(revlist)

puts "-------"
puts inf_check(node5)
node1.next_node = node5
puts inf_check(node5)
