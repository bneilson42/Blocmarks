class Bookmark < ActiveRecord::Base
  belongs_to :user
  has_many :likes, dependent: :destroy
end
