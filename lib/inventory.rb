require 'yaml'

class Inventory
  def initialize
    @items = YAML.load_file = 'inventory.txt'
  end
end
