class AddProfileToRents < ActiveRecord::Migration[5.0]
  def change
      add_reference :rents, :profile, foreign_key: true
  end
end
