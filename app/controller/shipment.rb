# frozen_string_literal: true

class Shipment
  attr_accessor :supplier, :delivery_date, :items

  def initialize
    @supplier = supplier
    @delivery_date = delivery_date
    @items = Item.new
  end
end
