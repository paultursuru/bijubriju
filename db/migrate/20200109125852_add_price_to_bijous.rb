class AddPriceToBijous < ActiveRecord::Migration[6.0]
  def change
    add_monetize :bijous, :price, currency: { present: false }
  end
end
