class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  #returns the first and last name of an actor.
  def full_name
    full_name = "#{self.first_name} #{self.last_name}"
    full_name
  end

  #lists all of the characters that actor has alongside the show that the character is in.
  def list_roles
    roles = []
    self.characters.each do |character|
        roles<< "#{character.name} - #{character.show.name}"
    end
    roles
  end
end