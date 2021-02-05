# frozen_string_literal: true

# .
module SaleSummaries
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

    def execute_building
      data = Formatter::Csv.new(sale_summary_params[:file_with_sales]).to_format("\t")
      errors = []
      data.each do |row|
        result = Sales::CreatorService.call(row)
        errors << result if result.is_a? ActiveModel::Errors
      end
      errors.empty? ? true : errors
    end

    def sale_summary_params
      params.require(:sale).permit(:file_with_sales)
    end
  end
end
