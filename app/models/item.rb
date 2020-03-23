class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :seller, class_name: 'User',optional: true, :foreign_key => 'seller_id'
  belongs_to :buyer, class_name: 'User',optional: true
  belongs_to :category
  belongs_to_active_hash :prefecture
  belongs_to_active_hash :postage
  belongs_to_active_hash :day
  has_many :item_images, inverse_of: :item, dependent: :destroy
  accepts_nested_attributes_for :item_images,allow_destroy: true
  validates :item_images, presence: true
  validates :name,              presence: true, length: { maximum: 40 }
  validates :detail, presence: true, length: { maximum: 1000}
  validates :price,presence: true,numericality: {only_integer: true,greater_than: 299, less_than: 10000000}
end
