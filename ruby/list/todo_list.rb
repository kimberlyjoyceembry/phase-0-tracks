class TodoList
    def initialize(input_list)
        @list = input_list
    end 
    
    def get_items
        @list 
    end 
    
    def add_item(list_item)
        @list << list_item
    end 
    
    def delete_item(list_item)
        @list.delete(list_item)
    end 
    
    def get_item(index)
        @list[index]
    end 
end 