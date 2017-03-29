class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  extend FriendlyId
  friendly_id :title, use: :slugged
  def slug_candidates
    [
      :title,
      [:title, :content]
    ]
  end
end
