class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.references :category, foreign_key: true
      t.string :description
      t.decimal :price, precision: 12, scale: 3
      t.boolean :active

      t.timestamps
    end
  end
end
