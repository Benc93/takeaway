class Restaurant

attr_reader :list_of_menus
attr_reader :name

def initialize(name)
  @name = name
  @list_of_menus = []
end

def has_menu?
  list_of_menus >= 0  
end

def add_menu(menu)
  list_of_menus << menu
end

def delete_menu(menu)
  list_of_menus.delete(menu)
end

end