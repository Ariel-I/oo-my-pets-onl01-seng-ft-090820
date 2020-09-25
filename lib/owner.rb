class Owner
 
 attr_reader :species, :name
 attr_accessor :cats, :dogs 
 
 @@all = []

 def initialize(name)
   @species = "human"
   @name = name
   @@all << self 
   @cats = []
   @dogs = []
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
   @cats.count
  
 end 
 
 def dogs 
   
 end 
 
 def buy_cat(name)
   Cat.new(name, self)
 end
 
 def buy_dog(dog)
   @pets[:dogs] << Dog.new 
 end 
 
 def walks_dogs
   @pets[:dogs].each do |dog|
     dog.mood = "happy"
   end 
   end 
   
   def feed_cats
     @pets[:cats].each do |cat|
       cat.mood = "happy"
     end 
     end 
     
     def sell_pets
       pets.each do |species, animals|
         animals.each do |animal|
           animal.mood = "nervous"
         end
         animals.clear
        end 
       end 
       
    def list_pets
    end 
 
 
end