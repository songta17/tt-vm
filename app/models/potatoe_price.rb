class PotatoePrice < ApplicationRecord

  scope :filter_by_date, ->(time) { where time: (time.to_date..time.to_date + 1) }

  def self.extract_maximal_main(potatoe_prices)
    result = []
    # result = [115,112,113,119,127,127,117,103]
    # result = [8,1,2,3,4,5,8,6,7,8,8]
    potatoe_prices.each { |x| result << x.value }
    biggest_gap = 0
    result.each.with_index do |value, index|
      index_du_max = result.rindex(result.max) 
      if index_du_max > index && biggest_gap < (result.max - value) && result.max != 0
        biggest_gap = (result.max - value) 
      end
    end
    return biggest_gap
  end
end
