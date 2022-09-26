class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # has_many :items
  # has_many :orders

  with_options presence: true do
    validates :nickname

    # 全角ひらがな、全角カタカナ、漢字
    validates :last_name, format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]/ }
    validates :first_name, format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]/ }

    # 全角カタカナ
    validates :read_last, format: { with: /\A[ァ-ヶー－]+\z/ }
    validates :read_first, format: { with: /\A[ァ-ヶー－]+\z/ }

    validates :birthday
  end
end
