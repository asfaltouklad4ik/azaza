class AddAssignmentsTable < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
          t.belongs_to :tasks
          t.belongs_to :users
	  t.timestamps
         end
  end
end
