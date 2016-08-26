class AddPhotoToPolterabend < ActiveRecord::Migration[5.0]
  def change
    add_column :polterabends, :photo, :string
  end
end
