class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.belongs_to :tasks
      t.belongs_to :users
      t.integer :user_id
      t.integer :task_id
      t.timestamps
    end
  end
  def down
    drop_table :assignments
    drop_table :users
    drop_table :tasks
  end
end
