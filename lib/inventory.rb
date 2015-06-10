require 'yaml'

class Inventory

  attr_reader :items

  def initialize
    @items = YAML.load_file = 'inventory.yaml'
  end
end
