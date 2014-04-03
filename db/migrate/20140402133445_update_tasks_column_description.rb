class UpdateTasksColumnDescription < ActiveRecord::Migration
  def change
  	change_table :tasks do |t|
  		t.text :textdescription
  	end
  end
end
