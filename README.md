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



## sellersテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|item_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :item



## buyersテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|item_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :item



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
|buyer_id|integer|null: false, foreign_key: true|
|category_id|integer|null: false, foreign_key: true|
|brand_id|integer|null: false, foreign_key: true|
|size_id|integer|null: false, foreign_key: true|
|item_img_id|integer|null: false, foreign_key: true|
|condition_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :postage_payer
- belongs_to :delivery_city
- belongs_to :delivery_type
- belongs_to :delivery_date
- belongs_to :condition
- belongs_to :category
- belongs_to :brand
- belongs_to :size
- has_one :user_evaluation
- has_many :sellers
- has_many :buyers
- has_many :comments
- has_many :favorities
- has_many :item_images



## postage_payersテーブル
|Column|Type|Options|
|------|----|-------|
|postage_payer|string|null: false|

### Association
- has_many :items



## delivery_citysテーブル
|Column|Type|Options|
|------|----|-------|
|delivery_city|string|null: false|

### Association
- has_many :items



## delivery_typesテーブル
|Column|Type|Options|
|------|----|-------|
|delivery_type|string|null: false|

### Association
- has_many :items



## delivery_daysテーブル
|Column|Type|Options|
|------|----|-------|
|delivery_date|string|null: false|

### Association
- has_many :items



## conditionsテーブル
|Column|Type|Options|
|------|----|-------|
|condition|string|null: false|

### Association
- has_many :items



## categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|ancestry|string|null: false|

### Association
- has_many :items



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


## item_imagesテーブル
|Column|Type|Options|
|------|----|-------|
|item_image|string|null: false|

### Association
- belongs_to :item



