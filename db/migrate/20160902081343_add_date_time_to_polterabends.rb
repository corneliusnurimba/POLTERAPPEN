class AddDateTimeToPolterabends < ActiveRecord::Migration[5.0]
  def change
    add_column :polterabends, :datetime, :datetime
  end
end
