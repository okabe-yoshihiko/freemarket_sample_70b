class Item < ApplicationRecord
  belongs_to :seller, class_name: 'User', :foreign_key => 'seller_id'
  belongs_to :buyer, class_name: 'User'
  has_many :item_images
end
