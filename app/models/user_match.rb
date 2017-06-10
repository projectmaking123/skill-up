class UserMatch < ApplicationRecord
  validates :user_1_id, :presence => true, :uniqueness => { :scope => :user_2_id }
  validates :user_2_id, :presence => true, :uniqueness => { :scope => :user_1_id }

  belongs_to :user1, class_name: "User", foreign_key: "user_1_id"
  belongs_to :user2, class_name: "User", foreign_key: "user_2_id"
  has_many :messages
end
