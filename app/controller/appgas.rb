class AppGas
  attr_accessor :delivery_date, :shipments, :supplier, :items
  attr_reader :products

  def initialize()
    @delivery_date = delivery_date
    @shipments = Array.new
    @supplier = supplier
    @items = items
    @products = Array.new
  end

  # private methods
  private

  def create_shipments
    unique_supplier = @products.map(&:supplier).uniq
    
    unique_supplier.each do |us|
      s = Shipment.new
      @products.each do |p|
        if us == p.supplier
          s.supplier = us
          s.delivery_date = Date.today + p.delivery_times.max
          s.items.title = p.name
          s.items.count = p.in_stock
        end
      end
      @shipments.push(s)
    end
  end

  def as_json(options={})
    {
      delivery_date: @shipments.map(&:delivery_date).max,
      shipments: @shipments.to_s
    }
  end
    
  def to_json(*options)
    as_json(*options).to_json(*options)
  end

  # public methods
  public

  def load_css(file_name)
    line_n = 0

    f = File.open(file_name, "r")

    f.each_line { |line|
      fields = line.split(',')

      p = Product.new
      if line_n > 0 
        p.name = fields[0].partition('_').first
        p.supplier = fields[1].tr_s('’', '').strip
        p.delivery_times = (fields[2].gsub(/[^0-9]/, '') + fields[3].gsub(/[^0-9]/, '') + fields[4].gsub(/[^0-9]/, '')).split('').map(&:to_i)
        p.in_stock = fields[5].tr_s('"', '').strip.to_i
        @products.push(p)
      end
      
      line_n += 1
    }
    create_shipments()
  end

  def print_products
    p @products
  end

  def print_shipments
    p @shipments
  end
  
  def print_json(*options)
    p to_json(*options)
  end

end
