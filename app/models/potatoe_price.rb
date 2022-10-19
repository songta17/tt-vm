class PotatoePrice < ApplicationRecord

  scope :filter_by_date, ->(time) { where time: (time.to_date..time.to_date + 1) }
end
