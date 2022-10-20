class PotatoePricesController < ApplicationController
  before_action :potatoe_prices, :only => [:index, :maximal_gain]

  def index                                
    render json: @potatoe_prices.map(&method(:serializer_potatoe_prices)), status: :ok
  end

  def maximal_gain
    result = PotatoePrice::extract_maximal_main(@potatoe_prices)
    render json: result, status: :ok 
  end

  private

  def serializer_potatoe_prices(potatoe_prices)
    {
      time: potatoe_prices.time,
      value: potatoe_prices.value,
    }
  end

  def potatoe_prices
    @potatoe_prices = PotatoePrice.all
    @potatoe_prices = @potatoe_prices.filter_by_date(params[:time]) if params[:time].present?
    @potatoe_prices = @potatoe_prices.order('time asc')
  end

end
