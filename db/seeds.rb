# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# User.create(username: "123", email: "1@1.com", password: "121212", encrypted_password: "121212")
# Post.create()

(1..3).each do |i|
    User.create(username: i, email: "#{i}@#{i}.com", 
                password: "121212", password_confirmation: "121212" )
    (1..3).each do |j|
        Post.create(title:"#{i}가 #{j}번째로 쓴 글" , content:"#{i}가 #{j}번째로 쓴 글이야", user_id: i)
    end
end