class CreateBijous < ActiveRecord::Migration[6.0]
  def change
    create_table :bijous do |t|
      t.string :sku
      t.string :name
      t.string :category

      t.timestamps
    end
  end
end
