class Article < ApplicationRecord
    has_many :comments, as: :commentable
    validates :title, presence: true
    validates :body, presence: true
  end