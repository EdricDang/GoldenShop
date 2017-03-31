class CreateOrders < ActiveRecord::Migration
  def change
    add_column :users_id, :email, :string
    create_table :orders do |t|
      t.decimal :subtotal, precision: 12, scale: 3
      t.decimal :tax, precision: 12, scale: 3
      t.decimal :shipping, precision: 12, scale: 3
      t.decimal :total, precision: 12, scale: 3
      t.references :order_status, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
