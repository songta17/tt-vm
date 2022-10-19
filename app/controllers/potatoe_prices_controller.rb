class PotatoePricesController < ApplicationController
  
  def index
    @potatoe_prices = PotatoePrice.all
    @potatoe_prices = @potatoe_prices.filter_by_date(params[:time]) if params[:time].present?
    @potatoe_prices = @potatoe_prices.order('time asc')
                                
    render json: @potatoe_prices.map(&method(:map_potatoe_prices)), status: :ok
  end

  private

  def map_potatoe_prices(potatoe_prices)
    {
      time: potatoe_prices.time,
      value: potatoe_prices.value,
    }
  end

end
