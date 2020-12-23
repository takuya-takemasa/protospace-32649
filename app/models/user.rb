class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  validates :name, presence: true
  validates :profile, presence: true
  validates :occupation, presence: true
  validates :position, presence: true
         
  has_many :Prototypes
  has_many :comments
  #PrototypeモデルとUserモデルに、それぞれを紐付けるためのアソシエーションを記述。
end