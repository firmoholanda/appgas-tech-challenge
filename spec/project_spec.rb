# frozen_string_literal: true

require 'spec_helper'

require_relative '../app/app_gas'

RSpec.describe AppGas do
  let(:my_app) { AppGas.new }

  # print_products
  describe '#print_products' do
    it 'print_products' do
      expect(my_app.print_products).to be_an_instance_of(Array)
    end
  end

  # print_shipments
  describe '#print_shipments' do
    it 'print_shipments' do
      expect(my_app.print_shipments).to be_an_instance_of(Array)
    end
  end

  # print_products
  describe '#print_json' do
    it 'print_json' do
      expect(my_app.print_json).to be_an_instance_of(String)
    end
  end
end
