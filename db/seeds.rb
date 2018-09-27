# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Group.destroy_all
g1 = Group.create :name => "Crossdressers in Sydney and beyond", :description => "exactly what it says up there..", :image => "https://ae01.alicdn.com/kf/HTB1WvxeNpXXXXcoXXXXq6xXFXXXl/Adult-Baby-Sweet-Heart-Hat-Sissy-Maid-Lockable-Dress-Crossdressing-Cosplay-Costume.jpg_640x640.jpg", :location => "Sydney", :nickname => "Cross'o"
g2 = Group.create :name => "Dating in your 50's", :description => "if you're still looking", :image => "http://fillmurray.com/300/300", :location => "Brisbane", :nickname => "Old basthid"



User.destroy_all
u1 = User.create :name => "Soheil", :email => "soheil@yahoo.com", :image => "", :bio => "i have made it this far", :location => "Sydney", :password => "test", :password_confirmation => "test"
u2 = User.create :name => "Tom'o", :email => "tom@yahoo.com", :image => "", :bio => "I watch videos alone", :location => "The Shire", :password => "test", :password_confirmation => "test"
u3 = User.create :name => "Will'o", :email => "will@yahoo.com", :image => "", :bio => "I know about colors", :location => "le Paris", :password => "test", :password_confirmation => "test"
u4 = User.create :name => "Kourosh", :email => "koush@yahoo.com", :image => "", :bio => "I know what you did in rails", :location => "Glebe", :password => "test", :password_confirmation => "test"


Interest.destroy_all
i1 = Interest.create :name => 'crosssing dresses'
i2 = Interest.create :name => 'outdoors'
i3 = Interest.create :name => 'sports'
i4 = Interest.create :name => 'Yoga'
i5 = Interest.create :name => 'Food'
i6 = Interest.create :name => 'Family'
i7 = Interest.create :name => 'Learning'
i8 = Interest.create :name => 'Health'
i9 = Interest.create :name => 'Photography'
i10 = Interest.create :name => 'Music'
i11 = Interest.create :name => 'Language'
i12 = Interest.create :name => 'Tech'

Event.destroy_all
e1 = Event.create :name => "Monday Crossdressing", :description => "Crossdressing on Mondays explained", :image => "", :location => "Kings Cross Sydney", :capacity => 20, :group_id => g1.id, :photos => "", :date => Date.today.as_json, :time => Time.now.hour.to_s + ":" + Time.now.min.to_s
e2 = Event.create :name => "There is still hope", :description => "I used to have a 20 year old girlfriend", :image => "", :location => "Epping", :capacity => 5, :group_id => g2.id, :photos => "", :date => Date.today.as_json, :time => Time.now.hour.to_s + ":" + Time.now.min.to_s

Role.destroy_all
r1 = Role.create :user_id => u1.id, :group_id => g1.id, :admin => true
r2 = Role.create :user_id => u2.id, :group_id => g1.id, :moderator => true
r3 = Role.create :user_id => u3.id, :group_id => g1.id, :moderator => false, :admin => false
r4 = Role.create :user_id => u3.id, :group_id => g2.id, :admin => true


Enrollment.destroy_all
en1 = Enrollment.create  :user_id => u1.id, :event_id => e1.id,   :status => 1
en2 = Enrollment.create  :user_id => u2.id, :event_id => e1.id,  :status => 1


Comment.destroy_all
c1 = Comment.create :user_id => u1.id, :event_id => e1.id, :content => "first comment"
c2 = Comment.create :user_id => u2.id, :event_id => e1.id, :content => "first comment"
