class Room < ApplicationRecord
  has_many :room_users
  # ↓中間テーブルと紐付ける記述
  has_many :users, through: :room_users

  has_many :messages

  validates :name, presence: true
end
