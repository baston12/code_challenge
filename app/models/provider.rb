# frozen_string_literal: true

# .
class Provider < ApplicationRecord
  has_many :products, dependent: :destroy

  validates :name, presence: true
  validates :name, uniqueness: { case_sensitive: true }

end
