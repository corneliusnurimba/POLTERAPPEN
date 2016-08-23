class CreateMemberships < ActiveRecord::Migration[5.0]
  def change
    create_table :memberships do |t|
      t.boolean :organiser

      t.references :user, foreign_key: true
      t.references :polterabend, foreign_key: true
      t.timestamps
    end
  end
end
