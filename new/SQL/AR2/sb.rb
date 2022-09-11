user1 = User.where('likes_dogs = ?', true) 


user1.each { |u| puts u.name } 


user.posts 

user1.posts.object_id

Post.create!( 
    user_id: user1.id, 
    body: 'body body', 
    title: 'hello cach'
)

user1.posts

user1.posts(true) 
user1.reload

user1.posts.load.to_a 

realtion = user1.posts 
realtion.count



Comment.join(:author).where(users: { user_name: 'ali' })
Comment.join(:author).where("users.user_name = 'ali'")

