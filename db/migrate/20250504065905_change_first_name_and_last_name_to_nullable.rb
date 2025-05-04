class ChangeFirstNameAndLastNameAndKanaToNullable < ActiveRecord::Migration[7.1]
  def change
    change_column_null :users, :first_name, true
    change_column_null :users, :last_name, true
    change_column_null :users, :first_name_kana, true
    change_column_null :users, :last_name_kana, true
  end
end