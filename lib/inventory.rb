require 'yaml'


INVENTORY_LIST = File.join(File.dirname(__FILE__), "..", "config/", "inventory.yaml")


class Inventory

  attr_reader :items

  # The inventory list allows for easy adding of items.

  def initialize
    @items = YAML.load_file INVENTORY_LIST
  end


  # Inventory is passed directly instead of as a param because
  # something as important as an inventory file should not be
  # arbitrary. It should be solidified.

end
