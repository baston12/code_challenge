# frozen_string_literal: true

# .
class Client < ApplicationRecord
  has_many :sales

  validates :name, presence: true
  validates :name, uniqueness: { case_sensitive: true }
end
