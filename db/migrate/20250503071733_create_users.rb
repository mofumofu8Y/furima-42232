class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :email, null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
      t.string :nickname, null: false
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :first_name_kana, null: false
      t.string :last_name_kana, null: false
      t.date :birthday, null: false
      t.string :phone_number, unique: true # ユニーク制約を付けるかどうか再確認
      t.text :address
      t.integer :status, default: 0, null: false # ユーザーのステータス（例: 0 = active, 1 = suspended）

      # Deviseが必要なカラム
      t.datetime :remember_created_at
      t.string :confirmation_token
      t.datetime :confirmed_at
      t.string :unconfirmed_email

      t.timestamps
    end

    # ユニーク制約を追加
    add_index :users, :email, unique: true
    # 必要であれば、statusカラムにインデックスも追加
    add_index :users, :status
  end
end