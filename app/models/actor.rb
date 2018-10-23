class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

def full_name
  "#{first_name} #{last_name}"
end

def list_roles
  char_=Character.find_by(actor_id: self.id)
"#{char_.name} - #{Show.find(char_.show_id).name}"
end

end
