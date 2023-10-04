# comment.rb
class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :prototype

  validates :content, presence: true

  def was_attached?
    self.image.attached?
  end
end
