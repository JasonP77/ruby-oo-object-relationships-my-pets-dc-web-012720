class Cat
attr_reader :owner_name
def initialize(cat_name, owner_name)
  @cat_name = cat_name
  @owner_name = owner_name
end

def mood(mood_string)
  self.mood = mood_string
end
end