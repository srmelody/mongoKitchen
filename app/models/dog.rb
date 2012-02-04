class Dog
  include MongoMapper::Document

  key :name, String
  key :age, Integer
  key :description, String
  key :born_at, Time
  key :active, Boolean
  key :fav_colors, Array

end
