class AddIntroductionToUsers < ActiveRecord::Migration[5.0]
  def up
    add_column :users, :introduction, :text
  end
end
