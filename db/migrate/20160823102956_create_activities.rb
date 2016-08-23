class CreateActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :activities do |t|
      t.string :category
      t.string :name
      t.string :description
      t.string :address
      t.integer :cost
      t.integer :duration
      t.string :photo

      t.timestamps
    end
  end
end
