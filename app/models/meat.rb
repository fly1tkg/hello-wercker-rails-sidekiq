class Meat < ActiveRecord::Base
  def grill
    self.kind = 'grilled meat'
  end

  def boil
    self.kind = 'boiled meat'
  end
end
