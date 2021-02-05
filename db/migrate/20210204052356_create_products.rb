# frozen_string_literal: true

# .
class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.references :provider, foreign_key: true
      t.string :description
      t.decimal :price, precision: 12, scale: 2

      t.timestamps
    end
  end
end
