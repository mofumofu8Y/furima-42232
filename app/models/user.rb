# app/models/user.rb
class User < ApplicationRecord
  # Deviseの設定を追加
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  # ユーザーが出品するアイテムとの関連
  has_many :items, dependent: :destroy

  # バリデーション（必要に応じて追加）
  validates :email, presence: true, uniqueness: true
  validates :nickname, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :first_name_kana, presence: true
  validates :last_name_kana, presence: true
  validates :birthday, presence: true
end