# frozen_string_literal: true

require 'csv'

module Formatter
  class Csv
    def initialize(file)
      @file = file
    end

    def to_format(separator = ',')
      CSV.parse(File.read(@file.tempfile), { headers: :first_row, col_sep: separator })
    end
  end
end
