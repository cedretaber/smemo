class NonEmptyMemo < ActiveRecord::Migration[5.0]
  def change
    change_column :memos, :title, :string, null: false
    change_column :memos, :body, :string, null: false
  end
end
