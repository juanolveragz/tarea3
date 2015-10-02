#Solution File
class Node
    def initialize(d)
        set_data(d)
        set_next(nil)
    end
    def get_data()
        return @data
    end
    def get_next()
        return @next_data
    end
    def set_data(d)
        @data=d
    end
    def set_next(s)
        @next_data=s
    end
end     

        

class LinkedList

    def initialize 
        @head = nil
    end
    
    def add(data)
        nuevo =Node.new(nil)
        nuevo.set_data(data)
        if @head.nil?
            @head=nuevo 
        
        else 
            current=@head
            while current.get_next!= nil
                current = current.get_next
            end 
            current.set_next(nuevo)
        end
            
    end
    
    def display
        current=Node.new(nil)
        current=@head
        content=""
        while (not current.nil?)
            if (current.get_next!=nil)
                content=content+current.get_data.to_s+","
            else
                 content=content+current.get_data.to_s
            end
            current = current.get_next
        end
        return content
    end
end

listaligada=LinkedList.new
dato=gets.chomp()
if (not dato=="-1")
    listaligada.add(dato)
end
while (dato!="-1")
    dato=gets.chomp()
    if ((not dato=="-1") && (not dato==""))
        listaligada.add(dato)
    end
end
puts listaligada.display
