# frozen_string_literal: true

class Product
  attr_accessor :name, :supplier, :delivery_times, :in_stock

  def initialize
    @name = name
    @supplier = supplier
    @delivery_times = delivery_times
    @in_stock = in_stock
  end
end
