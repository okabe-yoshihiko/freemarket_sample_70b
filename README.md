# free-market DB設計

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false|
|password|string|null: false|

### Association
- has_one :profile
- has_one :address
- has_one :credit_card
- has_many :favorities
- has_many :comments
- has_many :user_evaluations
- has_many :sellers
- has_many :buyers
- has_many :items



## profilesテーブル
|Column|Type|Options|
|------|----|-------|
|family_name|string|null: false|
|family_name_kana|string|null: false|
|first_name|string|null: false|
|first_name_kana|string|null: false|
|introduction|text|null: false|
|image|string|
|birth_year|date|null: false|
|birth_month|date|null: false|
|birth_day|date|null: false|
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user



## addressesテーブル
|Column|Type|Options|
|------|----|-------|
|family_name|string|null: false|
|family_name_kana|string|null: false|
|first_name|string|null: false|
|first_name_kana|string|null: false|
|tel_number|integer|null: false|
|zip_cord|integer|null: false|
|city|string|null: false|
|address|string|null: false|
|building|string|
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user



## cardsテーブル
|Column|Type|Options|
|------|----|-------|
|customer_id|string|null: false|
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user



## favoritiesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|item_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :item



## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|comment|string|null: false|
|user_id|integer|null: false, foreign_key: true|
|item_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :item



## user_evaluationsテーブル
|Column|Type|Options|
|------|----|-------|
|review|text|null: false|
|user_id|integer|null: false, foreign_key: true|
|item_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :item



## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|detail|text|null: false|
|price|integer|null: false|
|seller_id|integer|null: false, foreign_key: true|
|buyer_id|integer|
|category_id|integer|null: false, foreign_key: true|
|brand|string|foreign_key: true|
|size_|string|foreign_key: true|
|condition|string|null: false|
|postage_id|string|null: false|
|prefecture_id|string|null: false|
|day_id|string|null: false|

### Association
- belongs_to :user
  belongs_to_active_hash :prefecture
  belongs_to_active_hash :postage
  belongs_to_active_hash :day
- belongs_to :condition
- belongs_to :category
- has_one :user_evaluation
- has_many :sellers
- has_many :buyers
- has_many :comments
- has_many :favorities
- has_many :item_images


## categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|ancestry|string|null: false|

### Association
- has_many :items
- has_ancestry



## brandsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- has_many :items


## sizesテーブル
|Column|Type|Options|
|------|----|-------|
|size|string|null: false|

### Association
- has_many :items
- has_many :categories, through: categories_sizes
- has_many :categories_sizes



## item_imagesテーブル
|Column|Type|Options|
|------|----|-------|
|image|string|null: false|

### Association
- belongs_to :item
