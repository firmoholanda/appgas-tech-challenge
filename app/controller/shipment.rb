class Shipment < Item
  attr_accessor :supplier, :delivery_date, :items

  def initialize()
    @supplier = supplier
    @delivery_date = delivery_date
    @items = Item.new
  end

end