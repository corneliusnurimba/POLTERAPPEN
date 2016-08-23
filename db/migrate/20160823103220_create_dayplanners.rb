class CreateDayplanners < ActiveRecord::Migration[5.0]
  def change
    create_table :dayplanners do |t|
      t.datetime :datetime

      t.references :polterabend, foreign_key: true
      t.timestamps
    end
  end
end
