class AddFlatToRents < ActiveRecord::Migration[5.0]
  def change
      add_reference :rents, :flat, foreign_key: true
  end
end
