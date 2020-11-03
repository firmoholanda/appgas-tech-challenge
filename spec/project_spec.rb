# frozen_string_literal: true

require_relative '../app/app_gas'

RSpec.describe AppGas do
  let(:my_app) { AppGas.new }

  # print_products
  describe '#print_products' do
    it 'print_products' do
      expect(my_app.print_products).to be_an_instance_of(Hash)
    end
  end
end
