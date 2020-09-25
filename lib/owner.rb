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
 
 
 
 
 def buy_cat(name)
  @cats << name 
  
 end
 
 def buy_dog(dog)
   @dogs == Dog.new(name,self) 
 end 
 
 def walk_dogs
   @dogs.each do |dog|
     dog.mood = "happy"
   end 
   end 
   
   def feed_cats
     @cats.each do |cat|
       cat.mood = "happy"
     end 
     end 
     
     def sell_pets
       @pets.each do |species, animals|
         animals.each do |animal|
           animal.mood = "nervous"
         end
         animals.clear
        end 
       end 
       
    def list_pets
    end 
 
 
end