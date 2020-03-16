class Item < ApplicationRecord
  belongs_to :seller_id, class_name: 'User'
  belongs_to :buyer_id, class_name: 'User'
  belongs_to :category
  has_many :item_images
end
