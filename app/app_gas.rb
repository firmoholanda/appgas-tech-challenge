# frozen_string_literal: true

require_relative './controller/appgas'
require_relative './controller/item'
require_relative './controller/product'
require_relative './controller/shipment'

# ------------------------------------------------------------------------------------- #

my_app = AppGas.new

my_app.load_css('./data/app_gas.csv')
# my_app.print_products
# my_app.print_shipments
my_app.print_json
