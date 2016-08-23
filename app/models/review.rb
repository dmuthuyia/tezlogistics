class Review < ActiveRecord::Base
  belongs_to :staff
  belongs_to :user

end
