class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :adress
      t.string :email
      t.datetime :date_registration
      t.string :gender
      t.string :fullname
      t.timestamps
    end
  end
end
