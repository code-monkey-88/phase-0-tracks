class TodoList

  def initialize(items_array)
    @initial_list = items_array
  end

  def get_items
    @initial_list
  end

  def add_item(item)
    @initial_list << item
  end

  def delete_item(item)
    @initial_list.delete(item)
  end

  def get_item(index)
    @initial_list[index]
  end

end
