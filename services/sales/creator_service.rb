# frozen_string_literal: true

# .
module Sales
  # .
  class CreatorService < ApplicationService
    def initialize(params)
      @params = params
    end

    def call
      execute_building
    end

    private

    attr_accessor :params

    def build_sale
      client = Client.find_or_create_by(client_params)
      provider = Provider.find_or_create_by(provider_params)
      product = Product.find_or_create_by(product_params(provider))

      Sale.new(sale_params(client, product))
    end

    def execute_building
      sale = build_sale
      return sale.errors unless sale.valid?

      sale.save
    end

    def sale_params(client, product)
      {
        client: client,
        product: product,
        price: params['precio del item'],
        quantity: params['total de items']
      }
    end

    def client_params
      {
        name: params['comprador']
      }
    end

    def provider_params
      {
        name: params['vendedor'],
        address: params['direccion de vendedor']
      }
    end

    def product_params(provider)
      {
        provider: provider,
        description: params['descripcion del item'],
        price: params['precio del item']
      }
    end
  end
end