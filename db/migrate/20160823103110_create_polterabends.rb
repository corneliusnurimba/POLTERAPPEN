class CreatePolterabends < ActiveRecord::Migration[5.0]
  def change
    create_table :polterabends do |t|
      t.string :title

      t.timestamps
    end
  end
end
