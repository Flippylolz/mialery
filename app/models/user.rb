class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :albums
  accepts_nested_attributes_for :albums, allow_destroy: true

  validates_presence_of :email
  validates_uniqueness_of :email, :username

  def display_name
    first_name && last_name ? "#{first_name} #{last_name}" : email
  end
end
