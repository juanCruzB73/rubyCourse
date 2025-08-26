class ChangeUserIdTypeInMessages < ActiveRecord::Migration[8.0]
  def change
    change_column :messages, :user_id, :bigint
    add_foreign_key :messages, :users
    add_index :messages, :user_id
  end
end
