class CreatePictures < ActiveRecord::Migration[6.0]
  def change
    create_table :pictures do |t|
      t.string :photo
      t.references :bijou, null: false, foreign_key: true

      t.timestamps
    end
  end
end
