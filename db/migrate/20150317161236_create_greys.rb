class CreateGreys < ActiveRecord::Migration
  def change
    create_table :greys do |t|

      t.timestamps null: false
    end
  end
end
