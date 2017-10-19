class CreateBags < ActiveRecord::Migration[5.1]
  def change
    create_table :bags do |t|
      t.references :product, foreign_key: true
      t.references :buyer, foreign_key: true

      t.timestamps
    end
  end
end
