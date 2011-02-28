class Asset < ActiveRecord::Base

belongs_to :user, :dependent => :destroy
has_many :votes


  validates_presence_of :name, :description, :serial, :location, :message => 'no data entered, please retype data'
validates_uniqueness_of :name, :serial, :message => 'duplicate entry - please choose another name'
validates_length_of :name, :maximum => 20, :message => 'titles cannot be more than 20 characters'

end
