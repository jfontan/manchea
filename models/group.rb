
class Group
    include Stone::Resource
    
    field :name, String
    field :description, String
    field :public, Fixnum
    
    has_many :items
    
    def public?
        public!=0
    end
end
