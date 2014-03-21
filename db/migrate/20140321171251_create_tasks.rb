class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :category_id
      t.string :name
      t.datetime :time_in
      t.datetime :time_out
      t.text :description
      t.string :status
      t.string :priority
      t.datetime :date_create
      t.timestamps
    end
  end
end
