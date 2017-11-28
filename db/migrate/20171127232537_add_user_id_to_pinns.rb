class AddUserIdToPinns < ActiveRecord::Migration[5.1]
  def change
    add_column :pinns, :user_id, :integer
    add_index :pinns, :user_id
  end
end
