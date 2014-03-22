class CreateCategories < ActiveRecord::Migration
  def change
    change_table :categories do |t|

      #t.timestamps
      end
  end
def down
    drop_table :categories
  end
end
