# frozen_string_literal: true

# .
class SalesController < ApplicationController
  # GET /sales
  # GET /sales.json
  def index
    @sales = Sale.all
  end

  def new
    @sale = Sale.new
  end

  # POST /sales/create_from_file
  # POST /sales/create_from_file.json
  def create_from_file
    @result = SaleSummaries::CreatorService.call(params)

    respond_to do |format|
      if @result == true
        format.html { redirect_to sales_url, notice: I18n.t('controller.messages.created', model: Sale.model_name.human) }
      else
        format.html { redirect_to sales_url, alert: I18n.t('sales.index.exist_errors', model: Sale.model_name.human) }
      end
    end
  end
end
