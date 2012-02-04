class Recipe
  include MongoMapper::Document

  key :title, String
  key :description, String
  key :created_at, Datetime
  key :updated_at, Datetime

end
