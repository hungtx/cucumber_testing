class Company < ActiveRecord::Base
  attr_accessible :address, :city, :country, :description, :email, :name, :user_id, :website
  belongs_to :user
  
  validates :user_id, presence: true
  validates :name, presence: true, length: { maximum: 100 }
  validates :description, presence: true, length: { maximum: 1000 }
  
  default_scope order: 'companies.created_at DESC'
end
