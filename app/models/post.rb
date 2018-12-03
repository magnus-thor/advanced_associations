class Post < ApplicationRecord
  belongs_to :forum
  belongs_to :user
  has_many :likes

  def liked?(current_user)
    self.likes.any? { |like| like.user == current_user }
  end
end
