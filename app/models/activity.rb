class Activity < ActiveRecord::Base
  belongs_to :account
  belongs_to :contact
  belongs_to :opportunity
  belongs_to :support_case
  belongs_to :user
  belongs_to :lead
end
