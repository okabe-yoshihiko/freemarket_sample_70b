class Profile < ApplicationRecord
  belongs_to :user, optional: true
  validates :family_name, :family_name_kana, :first_name, :first_name_kana, :birth_year, :birth_month, :birth_day ,presence: true
  validates :family_name,:first_name, format: {with: /\A[ぁ-んァ-ン一-龥]/, message: "全角ひらがな、全角カタカナ、漢字のみが使用できます"}
  validates  :family_name_kana, :first_name_kana, format: {with: /\A[ァ-ヶー－]+\z/, message: "全角カタカナのみが使用できます"}
end
