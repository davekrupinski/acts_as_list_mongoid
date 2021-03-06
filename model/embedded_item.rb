class Item
  include Mongoid::Document
  include Mongoid::Timestamps
  include ActsAsList::Mongoid 
    
  field :number, :type => Integer

  embedded_in :list, :inverse_of => :items
end    

class List
  include Mongoid::Document
  field :name, :type => String
  embeds_many :items
end
