class Item < ApplicationRecord
  validates :name, presence: true

  belongs_to :user,optional: true
  belongs_to :postage_payer, optional: true
  belongs_to :delivery_city, optional: true
  belongs_to :delivery_type, optional: true
  belongs_to :delivery_date, optional: true
  belongs_to :condition, optional: true
  # belongs_to :category, optional: true
  belongs_to :brand, optional: true
  belongs_to :size, optional: true
  has_one :user_evaluation
  has_many :sellers
  has_many :buyers
  has_many :comments
  has_many :favorities
  has_many :item_images
  accepts_nested_attributes_for :item_images

end
