class CreateActivityPolterabends < ActiveRecord::Migration[5.0]
  def change
    create_table :activity_polterabends do |t|
      t.integer :total_upvotes

      t.references :polterabend, foreign_key: true
      t.references :activity, foreign_key: true
      t.timestamps
    end
  end
end
