class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :image
      t.string :name
      t.text :description
      t.integer :price
      t.integer :year
      t.string :category_id
      t.string :user_id

      t.timestamps null: false
    end
  end
end
