class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :id
      t.string :name
      t.string :adress
      t.string :email
      t.string :gender
      t.string :full_name
      t.datetime :reg_date
      t.timestamps
    end
  end
end
