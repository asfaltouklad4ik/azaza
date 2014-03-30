class CreateTables < ActiveRecord::Migration
  def change
	create_table :categories do |t|
          t.string :name
	  t.string :description
	  t.timestamps
    end

        create_table :tasks do |t|
	  t.belongs_to :category
          t.string :name
	  t.datetime :time_in
	  t.datetime :time_out
	  t.string :description
	  t.integer :status
	  t.integer :priority
	  t.datetime :create_date
	  t.timestamps
    end
 
#    create_table :users do |t|
#      t.string :name
#	  t.string :adress
#	  t.string :email
#	  t.string :gender
#	  t.datetime :registration_date
#	  t.string :first_name
#	  t.string :last_name
#	  t.timestamps
#     end
 
        create_table :assingments do |t|
          t.belongs_to :tasks
          t.belongs_to :users
	  t.timestamps
    end
  end
end
