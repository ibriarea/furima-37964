#　テーブル設計

## users テーブル

| Column             | Type   | Options                   | 
| ------------------ | ------ | ------------------------- |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false, unique: true |
| nickname           | string | null: false, unique: true |
| first_name         | string | null: false               |
| last_name          | string | null: false               |
| read_first         | string | null: false               |
| read_last          | string | null: false               |
| birthday           | date   | null: false               |


### Association

- has_many :products
- has_many :orders


## items テーブル

| Column             | Type       | Options                        |
| -----------------  | ---------- | ------------------------------ |
| image              | text       | null: false                    | 
| name               | string     | null: false                    |
| explanation        | text       | null: false                    |
| category_i         | integer    | null: false,                   |
| condition_id       | integer    | null: false,                   |
| delivery_charges_id| integer    | null: false,                   |
| prefectures_id     | integer    | null: false,                   |
| arrival_days_id    | integer    | null: false,                   |
| price              | integer    | null: false,                   |
| user_id            | references | null: false, foreign_key: true |


### Association

- belongs_to :user
- belongs_to :order
- belongs_to_active_hash :category
- belongs_to_active_hash :condition
- belongs_to_active_hash :delivery_charges
- belongs_to_active_hash :prefectures 
- belongs_to_active_hash :arrival_days



## orders テーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| user_id          | references | null: false, foreign_key: true |
| item_id          | references | null: false, foreign_key: true |


### Association

- has_one_active_hash :prefectures
- has_one :payment
- belongs_to :user
- belongs_to :item



## payments テーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| zip_code         | string     | null: false                    |
| prefectures_id   | integer    | null: false, foreign_key: true |
| city             | string     | null: false,                   |
| street_number    | string     | null: false,                   |
| building_name    | string     |                                |
| phone_number     | string     | null: false,                   |
| order_id         | references | null: false, foreign_key: true |

### Association

- belongs_to :order