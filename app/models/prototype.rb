class Prototype < ApplicationRecord
belongs_to :user
#PrototypeモデルとUserモデルに、それぞれを紐付けるためのアソシエーションを記述。
has_one_attached :image
#Prototypeモデルに、has_one_attachedを使用してimageカラムとのアソシエーションを記述した
has_many :comments, dependent: :destroy
#UserモデルおよびPrototypeモデルにも、commentに対するアソシエーションを設定した
  
  validates :title, presence: true
  validates :catch_copy, presence: true
  validates :concept, presence: true  
  validates :image, presence: true
#Prototypeモデルに、プロトタイプの名称、キャッチコピー、コンセプト、画像に関するバリデーションを記述(空なら登録出来ない)presence: true
end

