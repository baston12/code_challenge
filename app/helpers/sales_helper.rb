# frozen_string_literal: true

# .
module SalesHelper
  def total_income(sales)
    item_imports = sales.map(&:total)
    item_imports.inject(:+)
  end
end
