class Photo < ApplicationRecord
    has_many :comments, as: :commentable
    validates :title, presence: true
    validates :image_url, presence: true
  end
#   In this updated version, we've added validation rules to ensure that certain attributes are present when creating or updating records. For example, the Article model now requires that both the title and body attributes be present, while the Photo model requires that both the title and image_url attributes be present.
  
#   Note that you can customize the validation rules based on your specific needs, such as requiring a minimum length for a string attribute or a numerical range for a numeric attribute. You can also add custom validation methods
  
  
  
  