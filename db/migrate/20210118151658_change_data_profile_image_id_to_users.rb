class ChangeDataProfileImageIdToUsers < ActiveRecord::Migration[5.2]
  def up
    change_column :users, :profile_image_id, :string
  end
end
