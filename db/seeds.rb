# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Dir.glob("#{Rails.root}/db/seeds/**/*.rb").each do |file|
  require file if FileTest.file?(file)
end

User.create(email: "user",password: "user1111")

include
