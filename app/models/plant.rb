class Plant < ApplicationRecord
  belongs_to :user
  has_many :plants_actions
  has_many :actions, through: :plants_actions
  accepts_nested_attributes_for :plants_actions, :allow_destroy => true
  accepts_nested_attributes_for :actions, :allow_destroy => true

  validates :name, presence: true
  validates_inclusion_of :in_the_garden?, in: [true, false]
  validates_inclusion_of :edible?, in: [true, false]
  validates_inclusion_of :annual?, in: [true, false]

  def self.show_all_ingarden(user) 
    where(user_id: user.id, in_the_garden: true )
  end

  def self.show_all_edible(user) 
    where(user_id: user.id, edible: true )
  end

  def self.show_all_annual(user)
    where(user_id: user.id, annual: true )
  end


  def plants_actions_attributes=(plant_action_attribute)

    plant_action_attribute.values.each do |plant_action_hash|

    if plant_action_hash[:action_date].present?
        pa = PlantsAction.find_or_create_by(action_date: plant_action_hash[:action_date], action_id: plant_action_hash[:action_id])
        existing_pa = PlantsAction.find_by(action_id: plant_action_hash[:action_id])  
        if pa.action_id == existing_pa.action_id
          pa.update(action_date:plant_action_hash[:action_date])
        end  
          self.plants_actions << pa

      # existing_pa = PlantsAction.find_by(action_id: plant_action_hash[:action_id])  
      # if existing_pa.present?
      #   pa.update(action_date:plant_action_hash[:action_date])
      # else
      end
    end
  end


    #  existing_pa = PlantsAction.find_by(action_id: plant_action_hash[:action_id])  
    #  if existing_pa.present?
    #    existing_pa.update(action_date:plant_action_hash[:action_date])
    #  else
    #    binding.pry
    #    new_pa = PlantsAction.create(action_date: plant_action_hash[:action_date], action_id: plant_action_hash[:action_id])
    #      self.plants_actions << new_pa
    #  end
    #  if existing_pa = PlantsAction.find_by(action_id: plant_action_hash[:action_id])  
    #   existing_pa.update(action_date:plant_action_hash[:action_date])
    # elsif plant_action_hash[:action_date].present?
    #     new_pa = PlantsAction.create(action_date: plant_action_hash[:action_date], action_id: plant_action_hash[:action_id])
    #       self.plants_actions << new_pa
    #  end
    
  #find dupe actions and delete the old one.

  #pa PlantsAction.find plant, action_id
  # update just the action_date
  # pa.update(action_date: ) else create
  # So, I should find plans_actions that’s already made, 
  # if there is an action existing, just update action_date

  def actions_attributes=(action_attribute)
    if action_attribute["0"][:action_name].present? 
      action = Action.create(action_name: action_attribute["0"][:action_name])
      pa = PlantsAction.new(action_date: action_attribute["0"][:plants_actions_attributes]["0"][:action_date],
                            action_id: action.id) 
      self.plants_actions << pa
    end
  end

end

