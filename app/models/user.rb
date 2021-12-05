class User < ApplicationRecord
  include JwtToken
  # Direct associations

  has_many   :recommendations,
             dependent: :destroy

  has_many   :reviews,
             dependent: :destroy

  # Indirect associations

  has_many   :books_titles,
             through: :reviews,
             source: :book

  has_many   :books,
             through: :reviews,
             source: :book

  # Validations

  # Scopes

  def to_s
    email
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
