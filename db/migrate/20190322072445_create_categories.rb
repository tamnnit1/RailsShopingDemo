class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :name
      t.bigint :parrent
      t.boolean :active

      t.timestamps
    end
  end
end
