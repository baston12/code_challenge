# frozen_string_literal: true

# .
class Sale < ApplicationRecord
  attr_accessor :file_with_sales

  belongs_to :client
  belongs_to :product

  validates :product_id, :quantity, :price, presence: true
  validates :price, :quantity, numericality: { greater_than_or_equal_to: 1 }

  def total
    price * quantity
  end
end
