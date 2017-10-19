class AddQtyToBag < ActiveRecord::Migration[5.1]
  def change
    add_column :bags, :quantity, :integer
  end
end
