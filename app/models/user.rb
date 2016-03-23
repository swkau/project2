class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :role_access
  has_many :accounts
  has_many :activities
  has_many :contacts
  has_many :leads
  has_many :opportunities
  has_many :support_cases

  def full_name
      "#{first_name} #{last_name}"
  end
end
