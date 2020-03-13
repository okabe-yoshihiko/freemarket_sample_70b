class Item < ApplicationRecord
  belongs_to :user
  belongs_to :postage_payer
  belongs_to :delivery_city
  belongs_to :delivery_type
  belongs_to :delivery_date
  belongs_to :condition
  belongs_to :category
  belongs_to :brand
  belongs_to :size
  has_one :user_evaluation
  has_many :sellers
  has_many :buyers
  has_many :comments
  has_many :favorities
  has_many :item_images
  
end
