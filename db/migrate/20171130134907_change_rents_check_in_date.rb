class ChangeRentsCheckInDate < ActiveRecord::Migration[5.0]
  def change
    remove_column :rents, :check_in_date
    add_column :rents, :check_in_date, :date
    remove_column :rents, :check_out_date
    add_column :rents, :check_out_date, :date
  end

end
