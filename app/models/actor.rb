class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    [self.first_name, self.last_name].join(" ")
  end

  def list_roles
    Character.all.where("actor_id == ?", self.id).map{|x| "#{x.name} - #{x.show.name}"}
  end


  

end