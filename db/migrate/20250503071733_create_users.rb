# db/migrate/20230504000000_devise_create_users.rb
class DeviseCreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :name, null: false, default: ""
      t.string :email, null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      # Devise fields
      t.datetime :remember_created_at

      t.timestamps
    end
  end
end