class Profile < ApplicationRecord
  belongs_to :user, optional: true
  validates :family_name, :family_name_kana, :first_name, :first_name_kana, :birth_year, :birth_month, :birth_day ,presence: true
  validates :family_name,:first_name, format: {with: /\A[一-龥ぁ-ん]/, message: "全角のみが使用できます"}
  validates  :family_name_kana, :first_name_kana, format: {with: /\A[ァ-ヶー－]+\z/, message: "全角のみが使用できます"}
end
