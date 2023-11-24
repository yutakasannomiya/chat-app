class Room < ApplicationRecord
  has_many :room_users, dependent: :destroy
  # ↓ 中間テーブルとの紐付け
  has_many :users, through: :room_users  
  has_many :messages, dependent: :destroy

  validates :name, presence: true
end
