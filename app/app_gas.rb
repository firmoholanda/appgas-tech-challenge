require_relative "./controller/appgas.rb"
require_relative "./controller/item.rb"
require_relative "./controller/product.rb"
require_relative "./controller/shipment.rb"

# ------------------------------------------------------------------------------------- #

my_app = AppGas.new

my_app.load_css("../data/app_gas.csv")
my_app.print_products
my_app.print_shipments
my_app.print_json
