# frozen_string_literal: true

# .
class Product < ApplicationRecord
  belongs_to :provider

  validates :provider_id, :description, :price, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0}
end
