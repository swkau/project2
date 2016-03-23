class Opportunity < ActiveRecord::Base
  belongs_to :user
  belongs_to :account
  belongs_to :contact
end
