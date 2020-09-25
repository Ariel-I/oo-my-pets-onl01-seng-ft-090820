class Owner
 
 attr_reader :species, :name
 attr_accessor :cats, :dogs, :pets 
 
 @@all = []

 def initialize(name)
   @species = "human"
   @name = name
   @@all << self 
 end 
 
 def self.all 
   @@all
 end 
 
 def self.count 
   @@all.length 
 end 
 
 def self.reset_all
   @@all.clear
 end 
 
 def say_species
   "I am a #{species}."
 end 
 
 def cats
   Cat.all.select{|c| c.owner == self}
 end 
 
 def dogs 
   Dog.all.select{|d| d.owner == self}
 end 
 
 
def buy_cat(cat)
 @cats == Cat.new(cat,self)
  
end
 
def buy_dog(dog)
   @dogs == Dog.new(dog,self) 
 end 
 
 def walk_dogs
   Dog.all.each do |dog|
     dog.mood = "happy"
   end 
   end 
   
  def feed_cats
     Cat.all.each do |cat|
       cat.mood = "happy"
     end 
     end 
     
    def sell_pets
    cats.each && dogs.each do |pet, arr|
      arr.map do |pet|
        pet.mood = 'nervous'
      end
      arr.clear
    end
  end
       
    def list_pets
       "I have #{dogs.length} dog(s), and #{cats.length} cat(s)."
    end 
 
 
end