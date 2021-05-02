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

#  = =========================================================================================


class Animal
  def make_n_noises(n = 2)
    n.times { print "Growl " }
  end
end

class Liger < Animal
  def make_n_noises(num = 4)
    num.times { print "Roar " }
    # here we'll call super without any arguments. This will pass on `num`
    # implicitly to super. You can think of this call to super as:
    # `super(num)`
    super
  end
end

Liger.new.make_n_noises(3) # => Roar Roar Roar Growl Growl Growl



# ================================================================================================ 

class Animal
  attr_reader :species

  def initialize(species)
    @species = species
  end
end

class Human < Animal
  attr_reader :name

  def initialize(name)
    # super calls the original definition of the method
    # If we hadn't passed "Homo Sapiens" to super, then `name` would have
    # been passed by default.
    super("Homo Sapiens")
    @name = name
  end
end