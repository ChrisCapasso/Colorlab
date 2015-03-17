class CreateFormulas < ActiveRecord::Migration
  def change
    create_table :formulas do |t|

      t.timestamps null: false
    end
  end
end
