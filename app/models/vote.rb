class Vote < ActiveRecord::Base

belongs_to :asset, :dependent => :destroy



end
