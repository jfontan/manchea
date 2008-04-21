
class Item
    include Stone::Resource
    
    field :name, String
    field :description, String
    field :file, String
    field :filename, String
    field :date, Time
    field :size, Fixnum
    field :mimetype, String
    
    belongs_to :group
end
