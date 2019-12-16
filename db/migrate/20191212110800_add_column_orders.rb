class AddColumnOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :tshirt, :integer
    add_column :orders, :shirt, :integer
    add_column :orders, :suit, :integer
    add_column :orders, :sweater, :integer
    add_column :orders, :cardigan, :integer
    add_column :orders, :blouse, :integer
    add_column :orders, :othertops, :integer
    add_column :orders, :pants, :integer
    add_column :orders, :skirt, :integer
    add_column :orders, :onepiece, :integer
    add_column :orders, :address, :string
    add_column :orders, :receivetime, :string
    add_column :orders, :tel, :string
    add_column :orders, :price, :string
  end
end
