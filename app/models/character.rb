class Character < ActiveRecord::Base
belongs_to :show
belongs_to :actor

def say_that_thing_you_say
"#{self.name} always says: #{Character.find_by(name: self.name).catchphrase}"
end

end
