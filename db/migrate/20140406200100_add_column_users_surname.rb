class AddColumnUsersSurname < ActiveRecord::Migration
  def change
  	add_column :users, :surname, :string
  end
end
