require 'faker'
require 'populator'
require 'sha1'

User.destroy_all
Asset.destroy_all

10.times do
   user = User.new
   user.username = Faker::Internet.user_name
   user.email = Faker::Internet.email
   user.password = 'password'
   user.password_confirmation = 'password'
   user.save
end


User.all.each do |user|
Asset.populate(5..10) do |asset|
     asset.name = Faker::Lorem.sentence
     asset.description = Faker::Lorem.paragraphs
     asset.serial = Faker::Lorem.words
     asset.location = Faker::Lorem.sentence
     asset.user_id = user.id
     end
  
  end

