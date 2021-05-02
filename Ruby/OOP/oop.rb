class User 
  
  attr_reader :first_name, :last_name 

  def initialize(first_name, last_name) 
    @first_name  = first_name
    @last_name = last_name 
  end 

  def full_name 
    "#{first_name} #{last_name}" 
  end 

  def upvote_article(article) 
    article.upvotes  += 1 
  end 

end 

class SuperUser < User

  attr_reader :super_powers

  def initialize(first_name, last_name, super_powers) 
    super(first_name, last_name) 
    @super_powers = super_powers 
  end 

  def upvote_article(article) 
    article.upvotes += 3
  end 

  def delete_user(user) 
    return unless super_powers.include?(:user_deletion) 

    puts "Goodbye, #{user.full_name}!" 
  end
end 




u = User.new("elaraby", "elaidy") 

p u.first_name
p u.full_name

  su = SuperUser.new("elaraby", "elaidy", [:user_deletion]) 
puts 
p su.full_name
puts
p su.delete_user(u)
