class AddNameAndTelToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :name, :string
    add_column :users, :tel, :integer
  end
end
