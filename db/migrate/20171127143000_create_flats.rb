class CreateFlats < ActiveRecord::Migration[5.0]
  def change
    create_table :flats do |t|
      t.string :name
      t.text :description
      t.string :category
      t.integer :price
      t.integer :capacity
      t.string :address
      t.integer :post_code
      t.string :city

      t.timestamps
    end
  end
end
