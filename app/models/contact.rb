class Contact < ActiveRecord::Base
  belongs_to :user
  belongs_to :account
  has_many :activities

  def full_name
      "#{first_name} #{last_name}"
  end
end
