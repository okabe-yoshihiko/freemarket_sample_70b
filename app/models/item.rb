class Item < ApplicationRecord
  belongs_to :seller, class_name: 'User',optional: true, :foreign_key => 'seller_id'
  belongs_to :buyer, class_name: 'User',optional: true
  has_many :item_images
end
