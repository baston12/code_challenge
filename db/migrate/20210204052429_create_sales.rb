# frozen_string_literal: true

# .
class CreateSales < ActiveRecord::Migration[5.2]
  def change
    create_table :sales do |t|
      t.references :client, foreign_key: true
      t.references :product, foreign_key: true
      t.decimal :quantity, precision: 12, scale: 2
      t.decimal :price, precision: 12, scale: 2

      t.timestamps
    end
  end
end
