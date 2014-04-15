class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.references :user, index: true
      t.belongs_to :event, index: true
      t.string :name
      t.text :description
      t.datetime :deadline
      t.string :status
	    t.integer :priority
      t.timestamps
    end
  end
end
