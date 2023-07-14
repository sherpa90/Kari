class User < ApplicationRecord
  # Resto del código del modelo

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
        

  has_one_attached :profile_picture
  has_many :photos
  has_many :comments

  def admin?
    is_admin?
  end
end
