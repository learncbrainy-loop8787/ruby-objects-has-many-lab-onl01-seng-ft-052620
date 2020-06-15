class Post 
   attr_accessor :name, :title, :author
   @@all = []
   
   def initialize(name,title = nil)
     @name = name
     @title = title
     @@all << self
   end
    def author_name
    if self.author
      self.author.name
    else
      nil
    end
  end

 
 
 def self.all
    @@all
  end
end
 