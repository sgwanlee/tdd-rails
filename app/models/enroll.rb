class Enroll < ActiveRecord::Base
  belongs_to :team
  belongs_to :competition
end
