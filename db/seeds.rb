User.destroy_all
Desk.destroy_all

user1 = User.create :name => 'Groucho', :email => 'groucho@gmail.com', :password => 'groucho123', :password_confirmation => 'groucho123', :avatar => 'http://upload.wikimedia.org/wikipedia/commons/6/68/Groucho_Marx_-_portrait.jpg', :role => 'user'
user2 = User.create :name => 'Harpo', :email => 'harpo@gmail.com', :password => 'harpo123', :password_confirmation => 'harpo123', :avatar => 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTRqySP_xhLfuECk74dwc2Kv6T2i1zh2wI4liHv_ZBJbDck5-jq', :role => 'user'
user3 = User.create :name => 'Chiko', :email => 'chiko@gmail.com', :password => 'chiko123', :password_confirmation => 'chiko123', :avatar => 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRd4Pi0Wv1z7X0ya09uXhLwh4u_4ZyvsZl_QPIVYUGj5_a-LPI-', :role => 'user'

desk1 = Desk.create :title => 'Projective Space', :description => 'We are a highly curated community of tech-based startups and mutually supportive businesses in Sydney.', :address => '2 Holt St, Surry Hills', :price => '100', :desk_type => 'Dedicated / Fixed Desk', :thumbnail => 'http://s3-eu-west-1.amazonaws.com/deskcamping/listings/photo_5s/000/000/114/medium/PS_LES_-_Screen_(resized).jpg?1390500027'
desk2 = Desk.create :title => 'Belsham Street Studios', :description => 'Belsham Street Studios are a beautifully finished creative shared workspace in the heart of Hackney Central.', :address => '55 York St, Sydney', :price => '250', :desk_type => 'Fashion Hub', :thumbnail => 'http://s3-eu-west-1.amazonaws.com/deskcamping/listings/photo_1s/000/000/402/medium/FB_1st_Flr.jpg?1412250932'
desk3 = Desk.create :title => 'Crown Works', :description => 'We are a friendly creative studio full of people from varying industries... photography, film, product, graphic design and 3d rendering.', :address => '3 Glenayr St, Bondi', :price => '300', :desk_type => 'Creative Desk Space / Hot Desk', :thumbnail => 'http://s3-eu-west-1.amazonaws.com/deskcamping/listings/photo_1s/000/000/450/medium/Screen_Shot_2014-11-13_at_12.47.35.png?1415883239'
desk4 = Desk.create :title => 'Millers Junction', :description => 'Deskspace in MiLLERS JUNCTION, the creative studios attached to PRINT CLUB VAUCLUSE!', :address => '14 Old South Head Road, Vaucluse', :price => '220', :desk_type => 'Creative Desk Space / Hot Desk', :thumbnail => 'http://s3-eu-west-1.amazonaws.com/deskcamping/listings/photo_4s/000/000/071/medium/galleryweb2.jpg?1386677739'
desk5 = Desk.create :title => 'Bathtub 2 Boardroom', :description => 'We support early stage businesses with awesome co-working spaces, a lively community, mentors + biz support.', :address => '2 George St, Sydney', :price => '200', :desk_type => 'Creative Desk Space / Hot Desk', :thumbnail => 'http://s3-eu-west-1.amazonaws.com/deskcamping/listings/photo_4s/000/000/118/medium/578215_549587745075570_25973020_n.jpg?1390846415'

user1.desks << desk1
user1.desks << desk3
user2.desks << desk5
user3.desks << desk4
user3.desks << desk2

# desk1.user = user1



