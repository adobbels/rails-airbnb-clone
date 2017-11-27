class CreateRents < ActiveRecord::Migration[5.0]
  def change
    create_table :rents do |t|
      t.integer :number_of_people
      t.integer :check_in_date
      t.integer :check_out_date

      t.timestamps
    end
  end
end
