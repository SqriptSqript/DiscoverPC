class Computer < ActiveRecord::Base
  validates_presence_of :used_at, :used_for , :allow_blank => false
  validates_length_of :cash, :maximum => 2000, :allow_blank => false
end
