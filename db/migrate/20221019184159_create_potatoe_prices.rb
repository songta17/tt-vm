class CreatePotatoePrices < ActiveRecord::Migration[6.1]
  def change
    create_table :potatoe_prices do |t|
      t.datetime :time
      t.float :value

      t.timestamps
    end
  end
end
