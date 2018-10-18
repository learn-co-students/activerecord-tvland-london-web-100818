class Actor < ActiveRecord::Base

    has_many :characters
    has_many :shows, through: :characters

    def full_name
        "#{self.first_name} #{self.last_name}"
    end

    def list_roles
        new_arr = []
        count = 0
        character_arr = self.characters.map{|a| a.name}
        show_arr = self.shows.map{|s| s.name}
        character_arr.each do |c|
            new_arr << "#{character_arr[count]} - #{show_arr[count]}"
            count += 1
        end
        new_arr
    end
  
end