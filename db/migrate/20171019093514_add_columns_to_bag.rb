class AddColumnsToBag < ActiveRecord::Migration[5.1]
  def change
    add_column :bags, :price, :decimal
    add_column :bags, :size, :string
    add_column :bags, :color, :string
  end
end
