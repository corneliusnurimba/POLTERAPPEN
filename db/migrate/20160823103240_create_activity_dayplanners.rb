class CreateActivityDayplanners < ActiveRecord::Migration[5.0]
  def change
    create_table :activity_dayplanners do |t|

      t.references :activity, foreign_key: true
      t.references :dayplanner, foreign_key: true
      t.timestamps
    end
  end
end
